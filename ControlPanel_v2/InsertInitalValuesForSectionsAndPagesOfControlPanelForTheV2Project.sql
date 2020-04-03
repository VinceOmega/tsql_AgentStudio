USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 


BEGIN TRAN
BEGIN TRY

	INSERT INTO AgentStudio.ControlPanel.NavSections ( Title, Alias, Icons, SortOrder, CreatedBy )
	VALUES 
	( 'Content', 'Content', 'fa-window-maximize', 1, @CreatedBy ),
	( 'Design', 'Design', 'fa-paint-brush', 2, @CreatedBy ),
	( 'Configure', 'Configure', 'fa-cog', 3, @CreatedBy ),
	( 'Tools', 'Tools', 'fa-chart-line', 4, @CreatedBy ),
	( 'Admin/Billing', 'AdminBilling', 'fa-calculator', 5, @CreatedBy ),
	( 'Support', 'Support', 'fa-info-circle', 6, @CreatedBy );


	INSERT INTO AgentStudio.ControlPanel.Pages 
	( 
		Title, 
		SeoURL, 
		Alias, 
		Component, 
		Controller, 
		MetaTitle, 
		CreatedBy 
	)
	VALUES
	(
		'Dashboard',
		'control-panel',
		'Dashboard',
		'Dashboard',
		'RetrieveDashboard',
		'Dashboard',
		@CreatedBy
	),(
		'Homepage',
		'homepage',
		'HomePage',
		'Content',
		'RetrieveHomepage',
		'Homepage',
		@CreatedBy	
	),
	(
		'Announcements',
		'announcements',
		'Announcements',
		'Content',
		'RetrieveAnnouncements',
		'Announcements',
		@CreatedBy
	),(
		'Create Announcement',
		'create-announcement',
		'CreateAnnouncement',
		'Content',
		'RetrieveCreateAnnouncement',
		'Create Announcement',
		@CreatedBy
	),(
		'Edit Announcement',
		'edit-announcement',
		'EditAnnouncement',
		'Content',
		'RetrieveEditAnnouncement',
		'Edit Announcement',
		@CreatedBy
	),
	(
		'Slideshows',
		'slideshows',
		'Slideshows',
		'Content',
		'RetrieveSlideshows',
		'Slideshows',
		@CreatedBy
	),(
		'Content Feeds',
		'content-feeds',
		'ContentFeeds',
		'Content',
		'RetrieveContentFeeds',
		'Content Feeds',
		@CreatedBy
	),(
		'Affiliates',
		'affiliates',
		'Affiliates',
		'Content',
		'RetrieveAffiliates',
		'Affiliates',
		@CreatedBy
	),
	(
		'Create Affiliates',
		'create-affiliates',
		'CreateAffiliates',
		'Content',
		'RetrieveCreateAffiliates',
		'Create Affiliates',
		@CreatedBy
	),
	(
		'Edit Affiliates',
		'edit-affiliates',
		'EditAffiliates',
		'Content',
		'RetrieveEditAffiliates',
		'Edit Affiliates',
		@CreatedBy
	),(
		'Order Affiliates',
		'order-affiliates',
		'OrderAffiliates',
		'Content',
		'RetrieveOrderAffiliates',
		'Order Affiliates',
		@CreatedBy
	),
	(
		'Pages',
		'pages',
		'Pages',
		'Content',
		'RetrievePages',
		'Pages',
		@CreatedBy
	),(
		'Create Page',
		'create-page',
		'CreatePage',
		'Content',
		'RetrieveCreatePage',
		'Create Page',
		@CreatedBy
	),(
		'Edit Page',
		'edit-page',
		'EditPage',
		'Content',
		'RetrieveEditPage',
		'Edit Page',
		@CreatedBy
	),(
		'Manage Navigation',
		'manage-navigation',
		'ManageNavigation',
		'Content',
		'RetrieveManageNavigation',
		'Manage Navigation',
		@CreatedBy
	),
	(
		'Blog Posts',
		'blog-posts',
		'BlogPosts',
		'Content',
		'RetrieveBlog',
		'Blog Posts',
		@CreatedBy
	),
	(
		'Create Post',
		'create-post',
		'CreatePost',
		'Content',
		'RetrieveCreatePost',
		'Create Post',
		@CreatedBy
	),
	(
		'Edit Post',
		'edit-post',
		'EditPost',
		'Content',
		'RetrieveEditPost',
		'Edit Post',
		@CreatedBy
	),
	(
		'ImportPost',
		'import-post',
		'ImportPost',
		'Content',
		'RetrieveImportPost',
		'Import Post',
		@CreatedBy
	),(
		'Post Category',
		'post-category',
		'PostCategory',
		'Content',
		'RetrievePostCategories',
		'Post Categories',
		@CreatedBy
	),(
		'Create Category',
		'create-category',
		'CreateCategory',
		'Content',
		'RetrieveCreateCategory',
		'Create Category',
		@CreatedBy
	),(
		'Edit Category',
		'edit-category',
		'EditCategory',
		'Content',
		'RetrieveEditCategory',
		'Edit Category',
		@CreatedBy
	),(
		'Post Comments',
		'post-comments',
		'PostComments',
		'Content',
		'RetrievePostComments',
		'Post Comments',
		@CreatedBy
	),(
		'Edit Comment',
		'edit-comment',
		'Edit Comment',
		'Content',
		'RetrieveEditComment',
		'Edit Comment',
		@CreatedBy
	),(
		'Appearance',
		'appearance',
		'Appearance',
		'Design',
		'RetrieveAppearance',
		'Appearance',
		@CreatedBy
	),(
		'Header',
		'header',
		'Header',
		'Design',
		'RetrieveHeader',
		'Header',
		@CreatedBy
	),(
		'Footer',
		'footer',
		'Footer',
		'Design',
		'RetrieveFooter',
		'Footer',
		@CreatedBy
	),(
		'Business Info',
		'business-info',
		'BusinessInfo',
		'Configure',
		'RetrieveBusinessInfo',
		'Business Info',
		@CreatedBy
	),(
		'Widgets',
		'widgets',
		'Widgets',
		'Configure',
		'RetrieveWidgets',
		'Widgets',
		@CreatedBy
	),(
		'Social Media Channels',
		'social-media-channels',
		'SocialMediaChannels',
		'Configure',
		'RetrieveSocialMediaChannels',
		'Social Media Channels',
		@CreatedBy
	),(
		'SEO',
		'seo',
		'SEO',
		'Configure',
		'RetrieveSEO',
		'SEO',
		@CreatedBy
	),(
		'Google Analytics',
		'google-analytics',
		'GoogleAnalytics',
		'Configure',
		'RetrieveGoogleAnalytics',
		'Google Analytics',
		@CreatedBy
	),(
		'Domain Manager',
		'domain-manager',
		'DomainManager',
		'Configure',
		'RetrieveDomainManager',
		'Domain Manager',
		@CreatedBy
	),(
		'Create Domain',
		'create-domain',
		'CreateDomain',
		'Configure',
		'RetrieveCreateDomain',
		'Create Domain',
		@CreatedBy
	),(
		'Edit Domain',
		'edit-domain',
		'Edit Domain',
		'Configure',
		'RetrieveEditDomain',
		'Edit Domain',
		@CreatedBy
	),(
		'Booking Manager',
		'booking-manager',
		'BookingManager',
		'Tools',
		'RetrieveBookingManager',
		'Booking Manager',
		@CreatedBy
	),(
		'Booking Details',
		'booking-details',
		'BookingDetails',
		'Tools',
		'RetrieveBookingDetails',
		'Booking Details',
		@CreatedBy
	),(
		'Cancel Booking',
		'cancel-booking',
		'CancelBooking',
		'Tools',
		'RetrieveCancelBooking',
		'Cancel Booking',
		@CreatedBy
	),(
		'Commissions',
		'commissions',
		'Commissions',
		'Tools',
		'RetrieveCommissions',
		'Commissions',
		@CreatedBy
	),(
		'Commissions Payment Info',
		'commissions-payment-info',
		'CommissionsPaymentInfo',
		'Tools',
		'RetrieveCommissionPaymentInfo',
		'Commissions Payment Info',
		@CreatedBy
	),(
		'Itinerary Builder',
		'itinerary-builder',
		'ItineraryBuilder',
		'Tools',
		'RetrieveItineraryBuilder',
		'Itinerary Builder',
		@CreatedBy	
	),(
		'Automated Social Media',
		'automated-social-media',
		'AutomatedSocialMedia',
		'Tools',
		'RetrieveAutomatedSocialMedia',
		'Automated Social Media',
		@CreatedBy
	),(
		'Cruise Booking Engine',
		'cruise-booking-engine',
		'CruiseBookingEngine',
		'Tools',
		'RetrieveCruiseBookingEngine',
		'Cruise Booking Engine',
		@CreatedBy
	),(
		'Marketing Center',
		'marketing-center',
		'MarketingCenter',
		'Tools',
		'RetrieveMarketingCenter',
		'Marketing Center',
		@CreatedBy
	),(
		'Leads',
		'leads',
		'Leads',
		'Tools',
		'RetrieveLeads',
		'Leads',
		@CreatedBy
	),
	(
		'Edit Lead',
		'edit-lead',
		'EditLead',
		'Tools',
		'RetrieveEditLead',
		'Edit Lead',
		@CreatedBy
	),
	(
		'CRM',
		'crm',
		'CRM',
		'Tools',
		'RetrieveCRM',
		'CRM',
		@CreatedBy
	),
	(
		'Create Contact',
		'create-contact',
		'Create Contact',
		'Tools',
		'RetrieveCreateContact',
		'Create Contact',
		@CreatedBy
	),(
		'Edit Contact',
		'edit-contact',
		'EditContact',
		'Tools',
		'RetrieveEditContact',
		'Edit Contact',
		@CreatedBy
	),(
		'Import Contact',
		'import-contact',
		'ImportContact',
		'Tools',
		'RetrieveImportContact',
		'Import Contact',
		@CreatedBy
	),(
		'Billing Center',
		'billing-center',
		'BillingCenter',
		'AdminBilling',
		'RetrieveBillingCenter',
		'Billing Center',
		@CreatedBy
	),
	(
		'Subscription Detail',
		'subscription-detail',
		'SubscriptionDetail',
		'AdminBilling',
		'RetrieveSubscriptionDetail',
		'Subscription Detail',
		@CreatedBy
	),
	(
		'History Detail',
		'history-detail',
		'HistoryDetail',
		'AdminBilling',
		'RetrieveHistoryDetail',
		'History Details',
		@CreatedBy
	),
	(
		'Addon Manager',
		'addon-manager',
		'AddonManager',
		'AdminBilling',
		'RetrieveAddonManager',
		'Addon Manger',
		@CreatedBy
	),
	(
		'Addon Confirmation',
		'addon-confirmation',
		'AddonConfirmation',
		'AdminBilling',
		'RetrieveAddonConfirmation',
		'Addon Confirmation',
		@CreatedBy
	),(
		'Change Subscription Promo Code',
		'change-subscription-promo-code',
		'ChangeSubscriptionPromoCode',
		'AdminBilling',
		'RetrieveChangeSubscriptionPromoCode',
		'Change Subscription Promo Code',
		@CreatedBy
	),(
		'Change Subscription Frequency',
		'change-subscription-frequency',
		'ChangeSubscriptionFrequency',
		'AdminBilling',
		'RetrieveChangeSubscriptionFrequency',
		'Change Subscription Frequency',
		@CreatedBy
	),(
		'Change Subscription Package',
		'change-subscription-package',
		'ChangeSubscriptionPackage',
		'AdminBilling',
		'RetrieveChangeSubscriptionPackage',
		'Change Subscription Package',
		@CreatedBy
	),(
		'Change Subscription Summary',
		'change-subscription-summary',
		'ChangeSubscriptionSummary',
		'AdminBilling',
		'RetrieveChangeSubscriptionSummary',
		'Change Subscription Summary',
		@CreatedBy
	),(
		'Change Subscription Complete',
		'change-subscription-complete',
		'ChangeSubscriptionComplete',
		'AdminBilling',
		'RetrieveChangeSubscriptionComplete',
		'Change Subscription Complete',
		@CreatedBy
	),(
		'Users',
		'users',
		'Users',
		'AdminBilling',
		'RetrieveUsers',
		'Users',
		@CreatedBy
	),(
		'Create User',
		'create-user',
		'CreateUser',
		'AdminBilling',
		'RetrieveCreateUser',
		'Create User',
		@CreatedBy
	),(
		'Edit User',
		'edit-user',
		'EditUser',
		'AdminBilling',
		'RetrieveEditUser',
		'Edit User',
		@CreatedBy
	),
	(
		'Change Password',
		'change-password',
		'ChangePassword',
		'AdminBilling',
		'RetrieveChangePassword',
		'Change Password',
		@CreatedBy
	),(
		'Academy',
		'academy',
		'Academy',
		'Support',
		'RetrieveAcademy',
		'Academy',
		@CreatedBy
	),(
		'Registered Course',
		'registered-course',
		'RegisteredCourse',
		'Support',
		'RetrieveRegisteredCourse',
		'Registered Course',
		@CreatedBy
	),(
		'Help',
		'help',
		'Help',
		'Support',
		'RetrieveHelp',
		'Help',
		@CreatedBy
	);

	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

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