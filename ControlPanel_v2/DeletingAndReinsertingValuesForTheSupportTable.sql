USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	DELETE FROM AgentStudio.ControlPanel.NavSections;

	SELECT *
	FROM AgentStudio.ControlPanel.NavSections;

	INSERT INTO AgentStudio.ControlPanel.NavSections ( Title, Alias, Icons, SortOrder, CreatedBy )
	VALUES 
	( 'Content', 'Content', 'fa-window-maximize', 1, @CreatedBy ),
	( 'Design', 'Design', 'fa-paint-brush', 2, @CreatedBy ),
	( 'Configure', 'Configure', 'fa-cog', 3, @CreatedBy ),
	( 'Tools', 'Tools', 'fa-chart-line', 4, @CreatedBy ),
	( 'Admin/Billing', 'AdminBilling', 'fa-calculator', 5, @CreatedBy ),
	( 'Support', 'Support', 'fa-info-circle', 6, @CreatedBy );


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