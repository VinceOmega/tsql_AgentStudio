USE [AgentStudio]

BEGIN TRAN
BEGIN TRY


	/*********************************************************************************************/
	/*********************************************************************** Create Schemas *****/
	/*******************************************************************************************/

	IF NOT EXISTS ( SELECT schema_name FROM information_schema.schemata WHERE schema_name = 'ControlPanel' )
	BEGIN

		EXEC sp_executesql N'CREATE SCHEMA ControlPanel;';

		GRANT SELECT ON SCHEMA	:: ControlPanel TO AgentStudio_RemoteAccess;

		GRANT DELETE ON SCHEMA	:: ControlPanel TO AgentStudio_WebsiteUser;
		GRANT EXECUTE ON SCHEMA :: ControlPanel TO AgentStudio_WebsiteUser;
		GRANT INSERT ON SCHEMA	:: ControlPanel TO AgentStudio_WebsiteUser;
		GRANT SELECT ON SCHEMA	:: ControlPanel TO AgentStudio_WebsiteUser;
		GRANT UPDATE ON SCHEMA	:: ControlPanel TO AgentStudio_WebsiteUser;

	END

	/*********************************************************************************************/
	/************************************************************************ Create Tables *****/
	/*******************************************************************************************/

	IF ( NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'ControlPanel' AND TABLE_NAME = 'Pages' ) )
	BEGIN

		CREATE TABLE AgentStudio.ControlPanel.Pages (
			Id					int IDENTITY(1,1) NOT NULL,
			ParentId			int NULL,
			NavSectionId 		int NULL,
			Title 				varchar(50) NULL,
			SeoURL 				varchar(50) NOT NULL,
			Alias				varchar(25) NOT NULL,
			Component 			varchar(15) NOT NULL,
			Controller 			varchar(50) NOT NULL,
			MetaTitle			varchar(50) NULL,
			MetaDescription 	varchar(255) NULL,
			MetaKeywords		varchar(255) NULL,
			Guid 				uniqueidentifier NOT NULL,
			CreatedBy 			int NOT NULL,
			CreatedDate 		datetime NOT NULL,
			ModifiedBy 			int NULL,
			ModifiedDate 		datetime NULL,
			Ts					timestamp NOT NULL
		);

		CREATE UNIQUE INDEX index_Pages_SEOURL
		ON AgentStudio.ControlPanel.Pages (SEOURL);

		CREATE UNIQUE INDEX index_Pages_Alias
		ON AgentStudio.ControlPanel.Pages (Alias);

		ALTER TABLE AgentStudio.ControlPanel.Pages			ADD CONSTRAINT [DF_Pages_Guid]				DEFAULT (newsequentialid()) FOR [Guid];
		ALTER TABLE AgentStudio.ControlPanel.Pages			ADD CONSTRAINT [DF_Pages_CreatedDate]		DEFAULT (getdate()) FOR [CreatedDate];

	END

	
	IF ( NOT EXISTS ( SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'ControlPanel' AND TABLE_NAME = 'NavSections' ) )
	BEGIN

		CREATE TABLE AgentStudio.ControlPanel.NavSections(
			Id					int IDENTITY(1,1) NOT NULL,
			PageId 				int NULL,
			Title 				varchar(30) NOT NULL,
			Alias 				varchar(25) NOT NULL,
			Description 		varchar(255) NULL,
			Icons 				varchar(25) NULL,
			SortOrder 			int NOT NULL DEFAULT(0),
			Guid 				uniqueidentifier NOT NULL,
			CreatedBy 			int NOT NULL,
			CreatedDate 		datetime NOT NULL,
			ModifiedBy 			int NULL,
			ModifiedDate 		datetime NULL,
			Ts					timestamp NOT NULL
		);

		CREATE UNIQUE INDEX index_NavSections_Alias
		ON AgentStudio.ControlPanel.NavSections (Alias);

		ALTER TABLE AgentStudio.ControlPanel.NavSections	ADD CONSTRAINT [DF_NavSections_Guid]		DEFAULT (newsequentialid()) FOR [Guid];
		ALTER TABLE AgentStudio.ControlPanel.NavSections	ADD CONSTRAINT [DF_NavSections_CreatedDate]	DEFAULT (getdate()) FOR [CreatedDate];	

	END


     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    	ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
    -- COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
