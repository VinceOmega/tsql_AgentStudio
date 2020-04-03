USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	
	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

	UPDATE agentStudio.ControlPanel.Pages
		SET SortOrder = 4
	WHERE Id = 412;

	UPDATE agentStudio.ControlPanel.Pages
		SET SortOrder = 5
	WHERE Id = 411;
	
	UPDATE agentStudio.ControlPanel.Pages
		SET SortOrder = 6
	WHERE Id = 553;


	SELECT *
	FROM AgentStudio.ControlPanel.Pages;
	

	/*
	SELECT *
	FROM AgentStudio.ControlPanel.NavSections;

	
	UPDATE agentStudio.ControlPanel.NavSections
		SET Icons	= 'fa-home'
	WHERE Id = 56;


	SELECT *
	FROM AgentStudio.ControlPanel.NavSections;
	*/

     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    -- ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
     COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH