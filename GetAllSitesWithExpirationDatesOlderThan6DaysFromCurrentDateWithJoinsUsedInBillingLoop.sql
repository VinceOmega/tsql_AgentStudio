				SELECT	TOP 1000	site.IsDelinquent, site.InvoiceablePackage, site.InvoiceableAddons, site.AppGUID, site.AppId, site.SiteName, site.ExpirationDate, site.AuthNetProfileID, site.IsActive, site.CanExpire, site.PackageId, site.InTrial, site.CreatedDate,
							defaultalias.DomainName AS DefaultDomain,
							primaryalias.DomainName AS PrimaryDomain,
							SiteOwner.Username, SiteOwner.Firstname, SiteOwner.LastName, SiteOwner.AppUrl,
							frequency.Id AS FrequencyId, frequency.Name AS SubscriptionName, frequency.LengthInMonths AS SubscriptionPeriod,
							package.IsFree,
							promocode.Id AS PromoId, promocode.Code AS PromoCode, promocode.Guid AS PromoGuid,
							partner.Id AS PartnerId, partner.Name AS PartnerName, partner.IsReseller, partner.IsEnterprise
				FROM 		AgentStudio.dbo.sites 				AS site
				INNER JOIN	AgentStudio.dbo.site_aliases 		AS defaultalias 	ON defaultalias.AppGuid = site.AppGUID
				INNER JOIN	AgentStudio.dbo.site_aliases 		AS primaryalias 	ON primaryalias.AppGuid = site.AppGUID
				INNER JOIN	Travalliance_Container.Travalliance.RemoteAccess.SiteOwners AS SiteOwner ON SiteOwner.AppGUID = site.AppGUID
				INNER JOIN	AgentStudio.Common.Frequencies 		AS frequency 		ON frequency.Id = site.FrequencyId
				INNER JOIN	AgentStudio.dbo.Packages 			AS package 			ON package.Id = site.PackageId
				INNER JOIN	AgentStudio.dbo.site_promo_codes 	AS sitepromocode 	ON sitepromocode.AppGuid = site.AppGUID
				INNER JOIN	AgentStudio.Common.PromoCodes 		AS promocode 		ON promocode.GUID = sitepromocode.PromoCodeGUID
				INNER JOIN	AgentStudio.Marketing.Partners 		AS partner 			ON partner.Id = promocode.PartnerId
WHERE	site.CanExpire = 0
AND		site.IsCancelled = 0
AND		site.IsDeleted = 0
AND		site.IsDeveloperSite = 0
AND		site.IsTestSite	= 0
AND		site.InTrial		= 0
AND		site.IsActive	= 1
AND defaultalias.IsDefault 	= 1
AND primaryalias.IsPrimary 	= 1
AND sitepromocode.IsCurrent = 1
AND		site.ExpirationDate < DATEADD( day, -6, GETDATE() )
ORDER BY PackageId DESC