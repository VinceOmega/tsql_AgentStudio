/****** Script for inserting descriptions for pages  ******/

USE [AgentStudio]
DECLARE @CreatedBy int = 2318398

-- 2318398 -> Larry 

	DECLARE		@ParentId				int				=	412;
	DECLARE		@NavSectionId			int				=	49;
	DECLARE		@Title					varchar(max)	=	'Delete Domain';
	DECLARE		@SeoURL					varchar(max)	=	'delete-domain';
	DECLARE		@Alias					varchar(max)	=	'DeleteDomain';
	DECLARE		@Component				varchar(max)	=	'Configure';
	DECLARE		@Controller				varchar(max)	=	'RetrieveDeleteDomain';
	DECLARE		@MetaTitle				varchar(max)	=	'Delete Domain';
	DECLARE		@MetaDescription		varchar(max)	=	'Delete Domain';
	DECLARE		@MetaKeywords			varchar(max)	=	'delete, domain, page';
	DECLARE		@CreatedDate			datetime		=	GETDATE();
	DECLARE		@NavExternalLink		int				=	0;
	DECLARE		@InSpotlight			int				=	0;
	DECLARE		@SpotlightIcon			int				=	0;
	DECLARE		@CalloutEnabled			int				=	0;
	DECLARE		@SpotlightOrder			int				=	0;
	DECLARE		@SortOrder				int				=	0;

	DECLARE		@NavDescription			varchar(max)	=	'';

	DECLARE		@PageDescription		varchar(max)	=	'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto at cum debitis ea, eligendi error
															   impedit labore libero minima mollitia perspiciatis provident qui quos repudiandae sunt temporibus,
															   tenetur vel voluptatibus.
															</p>
															<p>Integer pharetra pulvinar sapien, at hendrerit lorem feugiat id. Suspendisse semper euismod sem, quis porta elit eleifend ac.
															   Maecenas ultricies est urna, bibendum pharetra nibh vestibulum id. Mauris dapibus tempus eros id convallis.
															   In mattis, ipsum vitae feugiat tincidunt, metus tortor commodo quam, dapibus elementum augue tortor dapibus magna.
															   Ut pulvinar suscipit cursus. Sed eleifend lacus tortor, vitae dignissim metus venenatis nec. Pellentesque maximus ex velit,
															   vel rutrum nibh porttitor eget.
															</p>
															<p>Etiam in ullamcorper lectus. Duis rutrum felis sit amet urna dapibus molestie.
															   Mauris id ante sed lacus fringilla hendrerit a et nibh. Praesent scelerisque facilisis est, ac interdum dolor scelerisque nec.
															   Aliquam erat volutpat. Fusce efficitur vitae leo sed dictum. Vestibulum sit amet lectus eget tortor faucibus rhoncus.
															   Mauris cursus rhoncus leo aliquam aliquam.
															</p>';

/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */
	
	SELECT *
	FROM AgentStudio.ControlPanel.Pages;

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
		MetaDescription,
		MetaKeywords,
		CreatedBy,
		CreatedDate,
		NavExternalLink,
		InSpotlight,
		CalloutEnabled,
		SpotlightOrder,
		SortOrder,
		NavDescription,
		PageDescription
	)
	VALUES
	(
		@NavSectionId,
		@Title,
		@SeoURL,
		@Alias,
		@Component,
		@Controller,
		@MetaTitle,
		@MetaDescription,
		@MetaKeywords,
		@CreatedBy,
		@CreatedDate,
		@NavExternalLink,
		@InSpotlight,
		@CalloutEnabled,
		@SpotlightOrder,
		@SortOrder,
		@NavDescription,
		@PageDescription

	);

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
