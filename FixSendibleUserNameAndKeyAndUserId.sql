/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	/* One of Seyi's demo sites
  	SELECT TOP 1000 *
  	FROM 	AgentStudio.Sites.Config
  	WHERE 	AppGuid = '	2661EE44-153B-E711-80F5-005056013017';

	UPDATE 	AgentStudio.Sites.Config
	SET 	SendibleUserId		= 179368,
			SendibleUserName	= 'sakinnaso',
			SendibleAPIKey		= '6ea286dcccb9aac645696295cd3e4bc56a170f85'
	WHERE 	AppGuid = '	2661EE44-153B-E711-80F5-005056013017';

	SELECT TOP 1000 *
  	FROM 	AgentStudio.Sites.Config
  	WHERE 	AppGuid = '	2661EE44-153B-E711-80F5-005056013017';
	*/

	SELECT TOP 1000 *
  	FROM 	AgentStudio.Sites.Config
  	WHERE 	AppGuid = 'FB529D18-202E-E911-A967-FF3BC7AFE33A';

	UPDATE 	AgentStudio.Sites.Config
	SET 	SendibleUserId		=  231756,
			SendibleUserName	= 'nicci2565620',
			SendibleAPIKey		= '7170920d6c664d5a2ed4d5b3521439a57982fe17'
	WHERE 	AppGuid = 'FB529D18-202E-E911-A967-FF3BC7AFE33A';

	SELECT TOP 1000 *
  	FROM 	AgentStudio.Sites.Config
  	WHERE 	AppGuid = 'FB529D18-202E-E911-A967-FF3BC7AFE33A';


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
