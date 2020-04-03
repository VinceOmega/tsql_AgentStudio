/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

USE [AgentStudio]

    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

	/*
	/* Set the CRM page as the parent for Leads */
	UPDATE AgentStudio.ControlPanel.Pages
		SET ParentId = 426
	WHERE Id = 424;

	/* Sets the Booking page as the parent for Commissions */
	UPDATE AgentStudio.ControlPanel.Pages
		SET ParentId = 415
	WHERE Id = 418;
	*/

		/* Sets the Homepage page as the parent for Announcements */
	UPDATE AgentStudio.ControlPanel.Pages
		SET ParentId = NULL
	WHERE Id = 381;

	/* Sets the Homepage page as the parent for Announcements */
	UPDATE AgentStudio.ControlPanel.Pages
		SET ParentId = 381
	WHERE Id = 382;

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;


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
