/****** Script for SelectTopNRows command from SSMS  ******/
/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

SELECT TOP 1000 *
  FROM [AgentStudio].[dbo].[sites]
  WHERE AppId = 84706


UPDATE AgentStudio.dbo.sites
SET FailedReqsMC = NULL
WHERE AppId = 84706

SELECT TOP 1000 *
  FROM [AgentStudio].[dbo].[sites]
  WHERE AppId = 84706

      /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
   --  COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH