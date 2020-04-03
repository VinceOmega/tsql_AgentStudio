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
		@SlideShowParentId,
		@ContentNavSectionId,
		'Create Slide',
		'create-slide',
		'CreateSlide',
		'Content',
		'RetrieveCreateSlide',
		'Create Slide',
		@CreatedBy
	),
	(
		@SlideShowParentId,
		@ContentNavSectionId,
		'Edit Slide',
		'edit-slide',
		'EditSlide',
		'Content',
		'RetrieveEditSlide',
		'Edit Slide',
		@CreatedBy
	),(
		@SlideShowParentId,
		@ContentNavSectionId,
		'Create Slideshow',
		'create-slideshow',
		'CreateSlideshow',
		'Content',
		'RetrieveCreateSlideshow',
		'Create Slideshow',
		@CreatedBy
	),
	(
		@SlideShowParentId,
		@ContentNavSectionId,
		'Edit Slideshow',
		'edit-slideshow',
		'EditSlideshow',
		'Content',
		'RetrieveEditSlideshow',
		'Edit Slideshow',
		@CreatedBy
	);

	SELECT *
	FROM AgentStudio.ControlPanel.Pages
	ORDER BY Id DESC;


     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    	ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
   --  COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH