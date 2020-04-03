/****** Script for creating a new webpart  ******/


DECLARE	@Webpart				uniqueidentifier	=	'1B18BAC9-284B-4670-A618-5E32AA991275';
DECLARE @WPName					varchar(200)		=	'Tutorials: Help Videos';
DECLARE	@WPDescription			varchar(500)		=	'Webpart that generates help videos for the Tutorials Section'
DECLARE @WPComponentName		varchar(100)		=	'ControlPanel.Tutorials';
DECLARE @WPMethodName			varchar(100)		=	'RetrieveTutorialHelpVideos';
DECLARE @WPRightGuid			uniqueidentifier	=	'E8082445-609F-4244-B537-13C53866BD24';
DECLARE	@WPParentGuid			uniqueidentifier	=	'00000000-0000-0000-0000-000000000000';
DECLARE	@WPRightName			varchar(200)		=	'Tutorials';
DECLARE	@WPRightDescription		varchar(256)		=	 'App has access to the Tutorials Section';
DECLARE	@WPCreateDate			datetime			=	GETDATE();
DECLARE	@WPLastModified			datetime			=	GETDATE();
DECLARE @WPRequiredRight		uniqueidentifier	=	'1004E886-F9B1-4545-8991-86AE24731A1C';



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
