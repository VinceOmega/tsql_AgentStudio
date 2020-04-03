
/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

SELECT TOP 1000 [AssociableDataGuid]
      ,[JoinType]
      ,[JoinGuid]
      ,[DataType]
      ,[DataValue]
      ,[SortOrder]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastModified]
      ,[ModifiedBy]
  FROM [AgentStudio].[dbo].[associable_data]
  WHERE AssociableDataGuid IN ('25AA7142-2900-4768-8DF1-0A82E9478629', 'EC6D2294-EEA1-4334-8C43-2F908718C6BD')
 

	UPDATE [AgentStudio].[dbo].[associable_data]
	SET 
		JoinGuid = 'EEED1605-748F-420B-A780-BC0D50497FDF'
	WHERE AssociableDataGuid = '25AA7142-2900-4768-8DF1-0A82E9478629';

	UPDATE [AgentStudio].[dbo].[associable_data]
	SET 
		JoinGuid = '9DC58D65-5B7E-46AA-993B-4103CCD3F355'
	WHERE AssociableDataGuid = 'EC6D2294-EEA1-4334-8C43-2F908718C6BD';

SELECT TOP 1000 [AssociableDataGuid]
      ,[JoinType]
      ,[JoinGuid]
      ,[DataType]
      ,[DataValue]
      ,[SortOrder]
      ,[CreatedDate]
      ,[CreatedBy]
      ,[LastModified]
      ,[ModifiedBy]
  FROM [AgentStudio].[dbo].[associable_data]
  WHERE AssociableDataGuid IN ('25AA7142-2900-4768-8DF1-0A82E9478629', 'EC6D2294-EEA1-4334-8C43-2F908718C6BD')


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
