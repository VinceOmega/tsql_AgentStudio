/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

USE [AgentStudio]
DECLARE @HomePageId int = 380;
DECLARE @ItineraryBuilderId int = 420;
DECLARE @AutomatedSocialMediaId int = 421;
DECLARE @CruiseBookingEngineId int = 422;
DECLARE @MarketingCenterId int = 423;
DECLARE @SubscriptionsId int = 435;
DECLARE @AddonManagerId int = 430;

    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

	UPDATE AgentStudio.ControlPanel.Pages
	SET SpotlightTitle	= 'Marketing Center',
	SpotlightOrder		= 1
	WHERE Id = @MarketingCenterId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET	SpotlightTitle	= 'Subscriptions',
	SpotlightOrder		= 2
	WHERE Id = @SubscriptionsId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET SpotlightTitle	= 'Add-Ons/Features',
	SpotlightOrder		= 3
	WHERE Id = @AddonManagerId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET SpotlightTitle	= 'Control Panel',
	SpotlightOrder		= 4
	WHERE Id = @HomePageId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET	SpotlightTitle	= 'Itinerary Builder',
	SpotlightOrder		= 5
	WHERE Id = @ItineraryBuilderId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET SpotlightTitle	= 'Social Media',
	SpotlightOrder		= 6
	WHERE Id = @AutomatedSocialMediaId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET SpotlightTitle	= 'Cruise Booking',
	SpotlightOrder		= 7
	WHERE Id = @CruiseBookingEngineId;

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;



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