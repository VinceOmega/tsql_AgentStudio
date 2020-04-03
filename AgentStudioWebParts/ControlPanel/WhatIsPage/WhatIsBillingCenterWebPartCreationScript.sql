/****** Script for creating a new webpart  ******/


DECLARE	@Webpart				uniqueidentifier	=		'330210F9-A5C3-7643-3EEF-BEC2923D8316';
DECLARE @WPName					varchar(200)		=		'What is: Billing Center';
DECLARE	@WPDescription			varchar(500)		=		'Webpart that generates the what is page for the billing center'
DECLARE @WPComponentName		varchar(100)		=		'ControlPanel.BillingInformation';
DECLARE @WPMethodName			varchar(100)		=		'RetrieveWhatIsBillingCenter';
DECLARE @WPRightGuid			uniqueidentifier	=		'35465BA5-DA7F-EE4A-228D-7B9082DAE1F2';
DECLARE	@WPParentGuid			uniqueidentifier	=		'00000000-0000-0000-0000-000000000000';
DECLARE	@WPRightName			varchar(200)		=		'What is Billing Center';
DECLARE	@WPRightDescription		varchar(256)		=		'App has access to the What Is Billing Center Page';
DECLARE	@WPCreateDate			datetime			=		GETDATE();
DECLARE	@WPLastModified			datetime			=		GETDATE();
DECLARE @WPRequiredRight		uniqueidentifier	=		'352C01DC-93EA-BE5A-8097-F960E6482A62';



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
