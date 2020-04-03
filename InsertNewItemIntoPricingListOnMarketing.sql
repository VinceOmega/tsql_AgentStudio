/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	INSERT INTO Marketing.Package_Info (Name, Category, Caption, SortOrder, PackageIds, PackageIdHighlight)
	VALUES ('Custom Slideshow', 'customization', 'Custom Slideshow:: Create your own eye catching homepage slideshow, featuring your own images, descriptions and call to action.', 6, '6,5', 1)

SELECT TOP 1000 [Id]
      ,[Name]
      ,[Category]
      ,[Caption]
      ,[SortOrder]
      ,[PackageIds]
      ,[PackageIdHighlight]
  FROM [AgentStudio].[Marketing].[Package_Info]

    /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    ROLLBACK TRAN
        
    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
  --   COMMIT TRAN


END TRY
BEGIN CATCH     
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
