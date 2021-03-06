/****** Script for SelectTopNRows command from SSMS  ******/
/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


SELECT TOP 1000 [Id]
      ,[Title]
      ,[Body]
      ,[SeoMetaTitle]
      ,[SeoMetaDescription]
      ,[SeoMetaKeywords]
      ,[SeoFriendlyURL]
      ,[IsActive]
      ,[Guid]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[ModifiedDate]
      ,[ModifiedBy]
      ,[Ts]
      ,[PageType]
      ,[IsHidden]
      ,[SortOrder]
      ,[IsInNav]
  FROM [AgentStudio].[Marketing].[Content]
  WHERE IsActive = 1
  ORDER BY SortOrder ASC;

  
  UPDATE AgentStudio.Marketing.Content
  SET SortOrder = 2,
  IsInNav = 1
  WHERE Id = 36;


SELECT TOP 1000 [Id]
      ,[Title]
      ,[Body]
      ,[SeoMetaTitle]
      ,[SeoMetaDescription]
      ,[SeoMetaKeywords]
      ,[SeoFriendlyURL]
      ,[IsActive]
      ,[Guid]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[ModifiedDate]
      ,[ModifiedBy]
      ,[Ts]
      ,[PageType]
      ,[IsHidden]
      ,[SortOrder]
      ,[IsInNav]
  FROM [AgentStudio].[Marketing].[Content]
  WHERE IsActive = 1
  ORDER BY SortOrder ASC;

	/* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
	ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
	 --COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH