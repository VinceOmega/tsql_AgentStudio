/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


	/* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavExternalLink = 1,
	ExternalLinkValue = 'https://api.sendible.com/api/v2/auth?application_id=[ApplicationId]&source=sso&username=[SendibleUserName]&api_key=[SendibleAPIKey]&path=/engage&redirect_uri=http://sendible.agentstudio.com/%23auth'
	WHERE Id = 421;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavExternalLink = 1,
	ExternalLinkValue = '[MarketingCenterDomain]'
	WHERE Id = 423;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavExternalLink = 1,
	ExternalLinkValue = '#'
	WHERE Id = 420;

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