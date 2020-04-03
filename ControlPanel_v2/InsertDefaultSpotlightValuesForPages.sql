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
SET InSpotlight = 1
WHERE Id IN ( 380, 420, 421, 422, 423, 435, 430 );

UPDATE AgentStudio.ControlPanel.Pages
SET CalloutEnabled = 0
WHERE Id IN ( 380, 420, 421, 422, 423, 435, 430 );

UPDATE AgentStudio.ControlPanel.Pages
SET	SpotlightIcon = 'fas fa-cubes'
WHERE Id = @SubscriptionsId;

UPDATE AgentStudio.ControlPanel.Pages
SET SpotlightIcon = 'fas fa-puzzle-piece'
WHERE Id = @AddonManagerId;

UPDATE AgentStudio.ControlPanel.Pages
SET SpotlightIcon = 'fas fa-home'
WHERE Id = @HomePageId;

UPDATE AgentStudio.ControlPanel.Pages
SET	SpotlightIcon = 'fas fa-clipboard-list'
WHERE Id = @ItineraryBuilderId;

UPDATE AgentStudio.ControlPanel.Pages
SET SpotlightIcon = 'fas fa-quote-right'
WHERE Id = @AutomatedSocialMediaId;

UPDATE AgentStudio.ControlPanel.Pages
SET SpotlightIcon = 'fas fa-ship'
WHERE Id = @CruiseBookingEngineId;

UPDATE AgentStudio.ControlPanel.Pages
SET SpotlightIcon = 'fas fa-envelope'
WHERE Id = @MarketingCenterId;


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
