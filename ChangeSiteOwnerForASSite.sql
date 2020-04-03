/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

	/* Changes Site Owner info for site - look up site owner guid in CDB */

	SELECT	*
	FROM	AgentStudio.dbo.sites
	WHERE	AppID	= 29571
	AND		AppGUID = 'E61E9335-8DE6-E311-95BD-0050568E420D';

	UPDATE AgentStudio.dbo.sites
	SET 
			SiteOwnerID = 2025044,
			SiteOwnerGUID	= '6B3295CA-54FD-4BB6-87B9-7EE859D10EC7'
	WHERE	AppID = 29571
	AND		AppGUID = 'E61E9335-8DE6-E311-95BD-0050568E420D';

	SELECT	*
	FROM	AgentStudio.dbo.sites
	WHERE	AppID = 29571
	AND		AppGUID = 'E61E9335-8DE6-E311-95BD-0050568E420D';




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