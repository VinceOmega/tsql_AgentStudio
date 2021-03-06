
/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	SELECT	*
	FROM	[AgentStudio].[Billing].[History]
	WHERE [AppGUID] = '50DE40D0-44BD-E711-A966-FF3BC7AFE33A'
	AND TxGUID IN ('8FAE3BFC-7AD4-E711-A966-FF3BC7AFE33A', '6A9EE9BF-78D4-E711-A966-FF3BC7AFE33A', '91FB82CD-5FD4-E711-A966-FF3BC7AFE33A')

	DELETE [AgentStudio].[Billing].[History]
	WHERE [AppGUID] = '50DE40D0-44BD-E711-A966-FF3BC7AFE33A'
	AND TxGUID IN ('8FAE3BFC-7AD4-E711-A966-FF3BC7AFE33A', '6A9EE9BF-78D4-E711-A966-FF3BC7AFE33A', '91FB82CD-5FD4-E711-A966-FF3BC7AFE33A')

	SELECT	*
	FROM	[AgentStudio].[Billing].[History]
	WHERE [AppGUID] = '50DE40D0-44BD-E711-A966-FF3BC7AFE33A'
	AND TxGUID IN ('8FAE3BFC-7AD4-E711-A966-FF3BC7AFE33A', '6A9EE9BF-78D4-E711-A966-FF3BC7AFE33A', '91FB82CD-5FD4-E711-A966-FF3BC7AFE33A')


	


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
