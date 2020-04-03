/****** Script for creating a new webpart  ******/


DECLARE	@Webpart				uniqueidentifier	=		'DD722739-0D2B-0024-D245-F951FE86B113';
DECLARE @WPName					varchar(200)		=		'Control Panel : Search Engine Optimization - JavaScript';
DECLARE	@WPDescription			varchar(500)		=		'Webpart that generates the javascript page for the search engine optimization section'
DECLARE @WPComponentName		varchar(100)		=		'ControlPanel.SearchEngineOptimization';
DECLARE @WPMethodName			varchar(100)		=		'RetrieveJavascript';
DECLARE @WPRightGuid			uniqueidentifier	=		'DD76D9FB-9993-2191-FC4B-5C9A17AD2396';
DECLARE	@WPParentGuid			uniqueidentifier	=		'D66AB29C-A1EB-AF57-F054-C0259179A364';
DECLARE	@WPRightName			varchar(200)		=		'Control Panel : Search Engine Optimization - JavaScript';
DECLARE	@WPRightDescription		varchar(256)		=		'App has access to the Search Engine Optimization JavaScript SubPage';
DECLARE	@WPCreateDate			datetime			=		GETDATE();
DECLARE	@WPLastModified			datetime			=		GETDATE();
DECLARE @WPRequiredRight		uniqueidentifier	=		'DD7BAEB0-A867-7B2C-FCB9-35403923FB5C';



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
