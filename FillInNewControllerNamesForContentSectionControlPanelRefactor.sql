/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	SELECT *
	FROM AgentStudio.ControlPanel.Pages2
	WHERE Component = 'Content';

		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Homepage_RETRIEVE'
		WHERE Id = 381;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Announcements_RETRIEVE'
		WHERE Id = 382;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateAnnouncement_RETRIEVE'
		WHERE Id = 383;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditAnnouncement_RETRIEVE'
		WHERE Id = 384;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Slideshows_RETRIEVE'
		WHERE Id = 385;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_ContentFeeds_RETRIEVE'
		WHERE Id = 386;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Affiliates_RETRIEVE'
		WHERE Id = 387;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateAffiliates_RETRIEVE'
		WHERE Id = 388;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditAffiliates_RETRIEVE'
		WHERE Id = 389;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_OrderAffiliates_RETRIEVE'
		WHERE Id = 390;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Pages_RETRIEVE'
		WHERE Id = 391;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreatePage_RETRIEVE'
		WHERE Id = 392;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditPage_RETRIEVE'
		WHERE Id = 393;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_ManageNavigation_RETRIEVE'
		WHERE Id = 394;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_Blog_RETRIEVE'
		WHERE Id = 395;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreatePost_RETRIEVE'
		WHERE Id = 396;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditPost_RETRIEVE'
		WHERE Id = 397;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_ImportPost_RETRIEVE'
		WHERE Id = 398;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_PostCategories_RETRIEVE'
		WHERE Id = 399;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateCategory_RETRIEVE'
		WHERE Id = 400;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditCategory_RETRIEVE'
		WHERE Id = 401;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_PostComments_RETRIEVE'
		WHERE Id = 402;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditComment_RETRIEVE'
		WHERE Id = 403;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_SEO_RETRIEVE'
		WHERE Id = 410;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeletePost_RETRIEVE'
		WHERE Id = 520;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateCategory_RETRIEVE'
		WHERE Id = 521;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeleteAffiliates_RETRIEVE'
		WHERE Id = 522;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeleteAnnouncement_RETRIEVE'
		WHERE Id = 523;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeleteSlideshow_RENDER'
		WHERE Id = 524;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeleteSlideshowSlide_RETRIEVE'
		WHERE Id = 525;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeletePage_RETRIEVE'
		WHERE Id = 534;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateSlide_RETRIEVE'
		WHERE Id = 543;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditSlide_RETRIEVE'
		WHERE Id = 544;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_CreateSlideshow_RETRIEVE'
		WHERE Id = 545;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_EditSlideshow_RETRIEVE'
		WHERE Id = 546;
					
		UPDATE AgentStudio.ControlPanel.Pages2
			SET Controller = 'Content_DeleteComments_RETRIEVE'
		WHERE Id = 538;

	SELECT *
	FROM AgentStudio.ControlPanel.Pages2
	WHERE Component = 'Content';
	


     /* LEAVE UNCOMMENTED UNTIL YOU ARE SURE THE USEFUL STUFF WORKS THEN -- AND ONLY THEN -- COMMENT IT OUT */
    --	ROLLBACK TRAN

    /* UNCOMMENT ONLY WHEN YOU ARE SURE THE USEFUL STUFF WORKS */
    	COMMIT TRAN


END TRY
BEGIN CATCH
    ROLLBACK TRAN
    /* WHEN AN ERROR OCCURS SHOULD TELL YOU WHERE IN THE USEFUL STUFF THE ERROR HAPPENED SOME DETAIL ABOUT WHY IT SOILED ITSELF */
    PRINT 'AT LINE: ' + CAST(ERROR_LINE() AS varchar(10));
    PRINT ERROR_MESSAGE();
END CATCH
