/* Safely remove IPs from the send to a friend table */

/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


/* DO USEFUL STUFF HERE */

  SELECT TOP 1000 [SendToAFriendGuid]
        ,[AppGuid]
        ,[DealGuid]
        ,[DealId]
        ,[SenderName]
        ,[SenderEmail]
        ,[FriendName]
        ,[FriendEmail]
        ,[Message]
        ,[CreatedDate]
        ,[IPAddress]
    FROM [AgentStudio].[dbo].[send_to_a_friend]
    WHERE IPAddress = '46.161.9.20' OR IPAddress = '46.161.9.51'


    DELETE FROM AgentStudio.dbo.send_to_a_friend
    WHERE IPAddress = '46.161.9.20' OR IPAddress = '46.161.9.51'

    SELECT TOP 1000 [SendToAFriendGuid]
        ,[AppGuid]
        ,[DealGuid]
        ,[DealId]
        ,[SenderName]
        ,[SenderEmail]
        ,[FriendName]
        ,[FriendEmail]
        ,[Message]
        ,[CreatedDate]
        ,[IPAddress]
    FROM [AgentStudio].[dbo].[send_to_a_friend]
    WHERE IPAddress = '46.161.9.20' OR IPAddress = '46.161.9.51'

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