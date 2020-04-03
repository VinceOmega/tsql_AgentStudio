/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

USE [AgentStudio]

    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 1
	WHERE Id IN ( 381, 404, 407, 415, 430, 444 );

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 2
	WHERE Id IN ( 385, 405, 408, 420, 440, 446 );

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 3
	WHERE Id IN ( 386, 406, 409, 421, 443 );

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 4
	WHERE Id IN ( 387, 410, 423 );

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 5
	WHERE Id IN ( 391, 412, 426 );

	UPDATE AgentStudio.ControlPanel.Pages
		SET SortOrder = 6
	WHERE Id IN ( 395, 411 );

	SELECT *
	FROM AgentStudio.ControlPanel.Pages
	WHERE SortOrder != 0;


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
