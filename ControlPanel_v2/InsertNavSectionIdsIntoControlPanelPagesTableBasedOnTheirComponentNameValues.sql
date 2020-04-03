USE [AgentStudio]

DECLARE @ModifiedBy int = 2318398
DECLARE @ModifiedDate datetime = GETDATE()

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Content'
	)
	WHERE Component = 'Content';


	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Design'
	)
	WHERE Component = 'Design';

	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Configure'
	)
	WHERE Component = 'Configure';


	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Admin/Billing'
	)
	WHERE Component = 'AdminBilling';

	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Support'
	)
	WHERE Component = 'Support';

	UPDATE	AgentStudio.ControlPanel.pages
	SET		NavSectionId = 
	(
		SELECT		nav.Id
		FROM		AgentStudio.ControlPanel.NavSections as nav
		WHERE		nav.Title = 'Tools'
	)
	WHERE Component = 'Tools';

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

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