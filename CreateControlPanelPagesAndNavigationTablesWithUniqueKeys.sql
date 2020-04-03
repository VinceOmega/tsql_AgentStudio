/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

	/* DO USEFUL STUFF HERE */

	CREATE TABLE AgentStudio.ControlPanel.Pages
		Id					int IDENTITY(1,1) NOT NULL
		ParentId			int NULL
		NavSectionId 		int NULL
		Title 				nvarchar NULL
		SEOURL 				nvarchar NOT NULL
		Alias				varchar(100) NOT NULL
		Component 			varchar(100) NOT NULL
		Controller 			varchar(150) NOT NULL
		MetaTitle			nvarchar NULL
		MetaDescription 	text NULL
		MetaKeywords		varchar(300)
		GUID 				uniqueidentifier NOT NULL
		CreatedBy 			int NOT NULL
		CreatedDate 		datetime NOT NULL
		ModifiedBy 			int NULL
		ModifiedDate 		datetime NULL
		Ts					timestamp NOT NULL;

	CREATE TABLE AgentStudio.ControlPanel.NavSections
		Id					int IDENTITY(1,1) NOT NULL
		PageId 				int NULL
		Title 				nvarchar NULL
		Alias 				varchar(100) NOT NULL
		Description 		text NULL
		Icons 				varchar(100) NOT NULL
		SortOrder 			int NOT NULL
		GUID 				uniqueidentifier NOT NULL
		CreatedBy 			int NOT NULL
		CreatedDate 		datetime NOT NULL
		ModifiedBy 			int NULL
		ModifiedDate 		datetime NULL
		Ts					timestamp NOT NULL;

	CREATE UNIQUE INDEX index_Pages_SEOURL
	ON AgentStudio.ControlPanel.Pages (SEOURL);

	CREATE UNIQUE INDEX index_Pages_Alias
	ON AgentStudio.ControlPanel.Pages (Alias);

	CREATE UNIQUE INDEX index_NavSections_PageId
	ON AgentStudio.ControlPanel.NavSections (PageId);

	CREATE UNIQUE INDEX index_NavSections_Alias
	ON AgentStudio.ControlPanel.NavSections (Alias);


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
