USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	SELECT *
	FROM AgentStudio.ControlPanel.NavSections;

	/*
	/* Content */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 2
	WHERE Id = 47;
	/* Design */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 3
	WHERE Id = 48;
	/* Configure */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 4
	WHERE Id = 49;
	/* Tools */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 5
	WHERE Id = 50;
	/* Admin/Billing */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 6
	WHERE Id = 51;
	/* Support */
	UPDATE agentStudio.ControlPanel.NavSections
		SET SortOrder = 7
	WHERE Id = 52;
	*/

	INSERT INTO AgentStudio.ControlPanel.NavSections ( Title, PageId, Alias, Icons, SortOrder, CreatedBy, CreatedDate )
	VALUES 
	( 'Dashboard', 380, 'Dashboard', 'fa-columns', 1, @CreatedBy, GETDATE() )


	SELECT *
	FROM AgentStudio.ControlPanel.NavSections;

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