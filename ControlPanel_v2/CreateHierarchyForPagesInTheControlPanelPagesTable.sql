USE [AgentStudio]

DECLARE @ModifiedBy int = 2318398
DECLARE @ModifiedDate datetime = GETDATE()

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'announcements'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-announcement', 'edit-announcement' );


	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'affiliates'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-affiliates', 'edit-affiliates', 'order-affiliates' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'pages'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-page', 'edit-page', 'manage-navigation' );


	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'blog-posts'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-post', 'edit-post', 'import-post', 'post-category', 'create-category', 'edit-category', 'post-comments', 'edit-comment' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'post-category'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-category', 'edit-category' );


	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'post-comments'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'edit-comment' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId =  
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'domain-manager'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-domain', 'edit-domain' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'booking-manager'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'booking-details', 'cancel-booking' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'commissions'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'commissions-payment-info' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'leads'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'edit-lead' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'crm'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-contact', 'edit-contact', 'import-contact' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'billing-center'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'subscription-detail', 'history-detail', 'addon-manager', 'change-subscription-promo-code', 'change-subscription-frequency', 'change-subscription-package', 'change-subscription-summary', 'change-subscription-complete' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'addon-manager'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'addon-confirmation' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'users'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'create-user', 'edit-user' );

	UPDATE	AgentStudio.ControlPanel.pages
	SET		ParentId = 
	(
		SELECT		p.Id
		FROM		AgentStudio.ControlPanel.pages as p
		WHERE		p.SeoURL = 'academy'
	),
	ModifiedBy		= @ModifiedBy,
	ModifiedDate	= @ModifiedDate
	WHERE SeoURL IN( 'registered-course' );

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