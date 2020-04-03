USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 

BEGIN TRAN
BEGIN TRY

	DECLARE @ContentNavSectionId			int		=	47;
	DECLARE @DesignNavSectionId				int		=	48;
	DECLARE @ConfigureNavSectionId			int		=	49;
	DECLARE @ToolsNavSectionId				int		=	50;
	DECLARE @AdminBillingNavSectionId		int		=	51;
	DECLARE @SupportNavSectionId			int		=	52;
	DECLARE @BlogParentId					int		=	395;
	DECLARE @PageParentId					int		=	391;
	DECLARE @PostCategoryParentId			int		=	399;
	DECLARE @AffliatesParentId				int		=	387;
	DECLARE @AnnouncementParentId			int		=	382;
	DECLARE @SlideShowParentId				int		=	385;
	DECLARE @UsersParentId					int		=	440;
	DECLARE @DomainParentId					int		=	412;
	DECLARE @BillingCenterParentId			int		=	430;
	DECLARE @CRMParentID					int		=	426;


	INSERT INTO AgentStudio.ControlPanel.Pages 
	(
		ParentId,
		NavSectionId,
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
		@BlogParentId,
		@ContentNavSectionId,
		'Delete Post',
		'delete-post',
		'DeletePost',
		'Content',
		'RetrieveDeletePost',
		'Delete Post',
		@CreatedBy
	),
	(
		@PostCategoryParentId,
		@ContentNavSectionId,
		'Delete Category',
		'delete-category',
		'DeleteCategory',
		'Content',
		'RetrieveDeleteCategory',
		'Delete Category',
		@CreatedBy
	),
	(
		@AffliatesParentId,
		@ContentNavSectionId,
		'Delete Affiliate',
		'delete-affiliates',
		'DeleteAffiliates',
		'Content',
		'RetrieveDeleteAfiliates',
		'Delete Affiliate',
		@CreatedBy
	),
	(
		
		@AnnouncementParentId,
		@ContentNavSectionId,
		'Delete Announcement',
		'delete-announcement',
		'DeleteAnnouncement',
		'Content',
		'RetrieveDeleteAnnouncement',
		'Delete Announcement',
		@CreatedBy

	),
	(
		@SlideShowParentId,
		@ContentNavSectionId,
		'Delete Slideshow',
		'delete-slideshow',
		'DeleteSlideshow',
		'Content',
		'RetrieveDeleteSlideshow',
		'Delete Slideshow',
		@CreatedBy
	),
	(
		@SlideShowParentId,
		@ContentNavSectionId,
		'Delete Slideshow Slide',
		'delete-slideshow-slide',
		'DeleteSlideshowSlide',
		'Content',
		'RetrieveDeleteSlideshowSlide',
		'Delete Slideshow Slide',
		@CreatedBy

	),
	(
		@UsersParentId,
		@AdminBillingNavSectionId,
		'Delete User',
		'delete-user',
		'DeleteUser',
		'AdminBilling',
		'RetrieveDeleteUser',
		'Delete User',
		@CreatedBy
	),
	(
		@DomainParentId,
		@ToolsNavSectionId,
		'Delete Domain',
		'delete-domain',
		'DeleteDomain',
		'Tools',
		'RetrieveDomain',
		'Delete Domain',
		@CreatedBy
	),
	(
		@BillingCenterParentId,
		@AdminBillingNavSectionId,
		'Delete Billing Information',
		'delete-billing-info',
		'DeleteBillingInfo',
		'AdminBilling',
		'RetrieveBillingInfo',
		'Delete Billing Information',
		@CreatedBy
	),
	(
		@BillingCenterParentId,
		@AdminBillingNavSectionId,
		'Change Subscription Cancel',
		'change-subscription-change',
		'ChangeSubscriptionCancelProcess',
		'AdminBilling',
		'RetrieveChangeSubscriptionCancelProcess',
		'Change Subscription Cancel Process',
		@CreatedBy

	),
	(
		@CRMParentID,
		@ToolsNavSectionId,
		'Export Contacts',
		'export-contacts',
		'ExportContacts',
		'Tools',
		'RetrieveExportContacts',
		'Export Contacts',
		@CreatedBy
	),
	(
		@CRMParentID,
		@ToolsNavSectionId,
		'Import Contacts',
		'import-contacts',
		'ImportContacts',
		'Tools',
		'RetrieveImportContacts',
		'Import Contacts',
		@CreatedBy
	),
		(
		@CRMParentID,
		@ToolsNavSectionId,
		'Delete Contacts',
		'delete-contacts',
		'DeleteContacts',
		'Tools',
		'RetrieveDeleteContacts',
		'Delete Contacts',
		@CreatedBy
	),
		(
		@CRMParentID,
		@ToolsNavSectionId,
		'Delete Leads',
		'delete-leads',
		'DeleteLeads',
		'Tools',
		'RetrieveDeleteLeads',
		'Delete Leads',
		@CreatedBy
	),
	(
		@PageParentId,
		@ContentNavSectionId,
		'Delete Page',
		'delete-page',
		'DeletePage',
		'Content',
		'RetrieveDeletePage',
		'Delete Page',
		@CreatedBy
	),
	(
		@BlogParentId,
		@ContentNavSectionId,
		'Delete Comments',
		'delete-comments',
		'DeleteComments',
		'Content',
		'RetrieveDeleteComments',
		'Delete Comments',
		@CreatedBy
	);

	SELECT *
	FROM AgentStudio.ControlPanel.Pages
	ORDER BY Id DESC;


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