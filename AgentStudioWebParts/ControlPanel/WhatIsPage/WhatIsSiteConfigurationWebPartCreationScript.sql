/****** Script for creating a new webpart  ******/


DECLARE	@Webpart				uniqueidentifier	=		'3577DA2B-91CE-804F-1A1F-720BF4C08427';
DECLARE @WPName					varchar(200)		=		'What is: Site Configuration';
DECLARE	@WPDescription			varchar(500)		=		'Webpart that generates the what is page for the site configuration'
DECLARE @WPComponentName		varchar(100)		=		'ControlPanel.SiteSettings';
DECLARE @WPMethodName			varchar(100)		=		'RetrieveWhatIsSiteConfiguration';
DECLARE @WPRightGuid			uniqueidentifier	=		'359C589C-9C9C-89C5-9F7D-25BA8DA3519B';
DECLARE	@WPParentGuid			uniqueidentifier	=		'00000000-0000-0000-0000-000000000000';
DECLARE	@WPRightName			varchar(200)		=		'What is Site Configuration';
DECLARE	@WPRightDescription		varchar(256)		=		'App has access to the What Is Site Configuration Page';
DECLARE	@WPCreateDate			datetime			=		GETDATE();
DECLARE	@WPLastModified			datetime			=		GETDATE();
DECLARE @WPRequiredRight		uniqueidentifier	=		'35A26268-9DAA-607D-6327-42FA3185E3CF';



/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */


/***	Inserts Webpart into the webpart table and create the required rules to show webpart in control panel ***/

Insert into [AgentStudio].[dbo].[web_parts]
(		[WebPartGUID]
,		[Name]
,		[Description]
,		[ComponentName]
,		[MethodName]
 ) Values
 (
		@Webpart
,		@WPName
,		@WPDescription
,		@WPComponentName
,		@WpMethodName
 );

Insert into [AgentStudio].[dbo].[packages_rights]
(		[RightGuid]
,		[ParentRightGuid]
,		[Name]
,		[Description]
,		[CreateDate]
,		[LastModified]
) Values
(		@WPRightGuid
,		@WPParentGuid
,		@WPRightName
,		@WPRightDescription
,		@WPCreateDate
,		@WPLastModified
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		1
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		5
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		3
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		2
);


Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		6
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		7
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		8
);

Insert into [AgentStudio].[dbo].[packages_rights_join]
(		[PackageRightsJoinGuid]
,		[RightGuid]
,		[PackageId]
) Values
(
		NEWID()
,		@WPRightGuid
,		9
);


Insert into [AgentStudio].[dbo].[webparts_required_subscription_rights]
(	[RequiredRightsGuid]
,	[WebpartGuid]
,	[RightGuid]
) Values
(
	@WPRequiredRight
,	@Webpart
,	@WPRightGuid
);


     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    	ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
    --	COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
