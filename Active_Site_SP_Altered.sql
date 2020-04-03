/* 
- Author: Ken Ho
- Description: Used to produce a report on active sites across the Agent Studio platform
- Date Created: Unknown
-
- Altered by Larry Stanfield
- Date: June 10th, 2016
- Changes: Added 'partnerSite_CTE.PartnerName' to the main select query
- Added 'partners.Name' to sub select for the partnerSite_CTE alias. Set up as the alias 'PartnerName'
- Lines altered: line 65 for partners.Name alias, line 94 for the 'partnerSite_CTE.PartnerName' field.
- 
- Ticket: CMS-245
- Note: The promo code field was already accounted for in the query, there may or may not be ui element for that data in the analytics page.
*/


USE [AgentStudio]
GO

/****** Object: SqlProcedure [dbo].[Report_Active_Sites] Script Date: 6/10/2016 10:01:21 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[Report_Active_Sites]
		@CreatedStartDate		datetime	= null	
		, @CreatedEndDate		datetime	= null
AS
BEGIN
/*

EXEC [dbo].[Report_Active_Sites] @CreatedStartDate = null, @CreatedEndDate = null;
EXEC [dbo].[Report_Active_Sites] @CreatedStartDate = '5/1/2014', @CreatedEndDate = '4/1/2015';

*/


/* 08-13-2015 kho
@LocStartDate and @LocEndDate is created to get around parameters sniffing.
online reference: http://blogs.msdn.com/b/turgays/archive/2013/09/10/parameter-sniffing-problem-and-workarounds.aspx
option 4.
*/
DECLARE	@LocStartDate		datetime		= @CreatedStartDate
		,@LocEndDate		datetime		= @CreatedEndDate
		,@Now			datetime		= GETDATE()
		;

IF		@LocStartDate IS NULL OR @LocStartDate > @Now SET @LocStartDate = '01-01-2011';
IF		@LocEndDate IS NULL OR @LocEndDate > @Now SET @LocEndDate = @Now;


/* 02-08-2016 kho
necessary joins to find out the current valid sitepromo code with partner info.
Seyi request with ticket: https://travalliance.atlassian.net/browse/AS-1433

*/
WITH	partnerSite_CTE AS
(
	SELECT	sitepromo.AppGUID		AS AppGuid
			,promocodes.Code		AS Code
			,partners.IsReseller	AS IsReseller
			,partners.Name			AS PartnerName

	FROM		Marketing.Partners AS partners WITH (NOLOCK)

	JOIN		Common.PromoCodes AS promocodes WITH (NOLOCK)
		ON	partners.Id = promocodes.PartnerId

	JOIN		site_promo_codes AS sitepromo WITH (NOLOCK)
		ON	sitepromo.PromoCodeGUID = promocodes.Guid
	WHERE
			sitepromo.IsCurrent = 1
)

/*
join to travalliance siteowner view to get valid users since agentstudio doesnt store user info
*/
SELECT		
			websites.CreatedDate
			,websites.SiteName
			,websites.AppID
			,websites.PackageId
			,packages.Name			AS package_name
			,websites.InTrial
			,websites.CanExpire
			,websites.ExpirationDate
			,partnerSite_CTE.Code
			,siteOwner.UserName
			,siteOwner.UserId
			,partnerSite_CTE.PartnerName
 
FROM			dbo.sites AS websites WITH (NOLOCK)

JOIN			dbo.packages AS packages WITH (NOLOCK)
	ON		websites.PackageId = packages.Id

JOIN			Travalliance_Container.Travalliance.AgentStudio.SiteOwners AS siteOwner	
	ON		siteOwner.AppGuid = websites.AppGUID

LEFT JOIN		partnerSite_CTE	
	ON		websites.AppGUID = partnerSite_CTE.AppGUID

WHERE		
			websites.IsActive = 1
			AND
			websites.IsDeleted = 0
			AND
			websites.IsCancelled = 0
			AND
			websites.sitename NOT LIKE '%\[test\]%' ESCAPE '\'
			AND
			websites.CreatedDate
			BETWEEN @LocStartDate AND DATEADD(DAY, 1, @LocEndDate)
ORDER BY		
			websites.CreatedDate DESC

END