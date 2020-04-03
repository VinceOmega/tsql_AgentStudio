/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

	USE [AgentStudio]

	/* Content Top Pages */
	DECLARE @HomePageId					int		= 381;
	DECLARE @SlideshowsId				int		= 385;
	DECLARE @ContentFeedsId				int		= 386;
	DECLARE @AffiliatesId				int		= 387;
	DECLARE @PagesId					int		= 391;
	DECLARE @BlogId						int		= 395;

	/* Design Top Pages */
	DECLARE @AppearanceId				int		= 404;
	DECLARE @HeaderId					int		= 405;
	DECLARE @FooterId					int		= 406;

	/* Configure Top Pages */
	DECLARE @BusinessInfoId				int		= 407;
	DECLARE @WidgetsId					int		= 408;
	DECLARE @SocialMediaId				int		= 409;
	DECLARE @GeneralSEOId				int		= 410;
	DECLARE @GoogleAnalyticsId			int		= 411;
	DECLARE @DomainMangerId				int		= 412;

	/* Tools Top Pages */
	DECLARE @BookingManagerId			int		= 415;
	DECLARE @ItineraryBuilderId			int		= 420;
	DECLARE @AutomatedSocialMediaId		int		= 421;
	DECLARE @CruiseBookingEngineId		int		= 422;
	DECLARE @MarketingCenterId			int		= 423;
	DECLARE @CRMId						int		= 426;

	/* Admin/Billing Top Pages */
	DECLARE @BillingCenterId			int		= 430;
	DECLARE @UserId						int		= 440;
	DECLARE @ChangePasswordId			int		= 443;

	/* Support Top Pages */
	DECLARE @AcademyId					int		= 444;
	DECLARE @HelpCenterId				int		= 446;

    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages
	WHERE Id IN ( 
					381, 385, 386, 387, 391, 395, 
					404, 405, 406, 407, 408, 409, 
					410, 411, 412, 415, 420, 421, 
					422, 423, 426, 430, 440, 443, 
					444, 446 
				);

	/* Content Top Pages */
	UPDATE AgentStudio.ControlPanel.Pages
	SET	NavDescription = 'Manage where your custom content will appear on your website’s Homepage'
	WHERE Id = @HomePageId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET	NavDescription = 'Manage your created Slideshows and associated Slides'
	WHERE Id = @SlideshowsId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage your Content Feeds for your site'
	WHERE Id = @ContentFeedsId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET	NavDescription = 'Add/manage third-party affiliations'
	WHERE Id = @AffiliatesId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage your existing page visibility and sequence'
	WHERE Id = @PagesId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Create informational pieces on travel topics you''ve personally experienced'
	WHERE Id = @BlogId;

	/* Design Top Pages */
	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Control the look and feel of your site'
	WHERE Id = @AppearanceId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Upload a logo(optional) and manage what information appears in your website’s Header'
	WHERE Id = @HeaderId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage what information appears in your website’s Footer'
	WHERE Id = @FooterId;

	/* Configure Top Pages */

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Review and update your business contact information'
	WHERE Id = @BusinessInfoId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Add custom forms, tracking tools and widgets to areas of your website using Javascript code'
	WHERE Id = @WidgetsId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'This section contains a variety of social tools and links'
	WHERE Id = @SocialMediaId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage your website''s Search Engine Optimization title, description and keywords'
	WHERE Id = @GeneralSEOId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Enter your Google Analytics Tracking Code here to monitor and analyze traffic to your website.'
	WHERE Id = @GoogleAnalyticsId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Link your unique domain name to your Agent Studio website'
	WHERE Id = @DomainMangerId;

	/* Tools Top Pages */

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage your Hotel and Cruise Bookings, as well as your Commissions here'
	WHERE Id = @BookingManagerId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Build custom itineraries for your site'
	WHERE Id = @ItineraryBuilderId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manager and automate your presence in social media'
	WHERE Id = @AutomatedSocialMediaId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage reservations that have been made through your website’s Cruise Booking Engine integration'
	WHERE Id = @CruiseBookingEngineId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Create and launch a marketing campaign with the Marketing Center!'
	WHERE Id = @MarketingCenterId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Manage your contacts and leads obtained for your site.'
	WHERE Id = @CRMId;

	/* Admin/Billing Top Pages */

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Set your Billing Info, review Billing History, change your subscription, and configure Add-Ons'
	WHERE Id = @BillingCenterId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Create users and define roles for them'
	WHERE Id = @UserId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Change your password here'
	WHERE Id = @ChangePasswordId;

	/* Support Top Pages */

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'Register for training courses'
	WHERE Id = @AcademyId;

	UPDATE AgentStudio.ControlPanel.Pages
	SET NavDescription = 'FAQs, Support and Feedback'
	WHERE Id = @HelpCenterId;


	SELECT *
	FROM AgentStudio.ControlPanel.Pages
		WHERE Id IN ( 
					381, 385, 386, 387, 391, 395, 
					404, 405, 406, 407, 408, 409, 
					410, 411, 412, 415, 420, 421, 
					422, 423, 426, 430, 440, 443, 
					444, 446 
				);


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
