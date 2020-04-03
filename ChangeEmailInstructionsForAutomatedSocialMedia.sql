/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY

UPDATE AgentStudio.Common.AddOns
SET
	EmailInstructions = '<h2 style="text-align: center; margin: 0 0 10px 0; font-family: Helvetica, Arial, sans-serif; color: #333333; font-weight: normal;">Automated Social Media Setup Instructions</h2><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;">To setup Automated Social Media for your Agent Studio website, follow the steps below:</p><ol style="text-align: left;"><li style="padding-bottom: 8px;">Log into your website''s control panel. The Automated Social Media link will be available on the left navigation of your control panel.</li><li style="padding-bottom: 8px;">Click the Automated Social Media link and you will be logged into your Automated Social Media dashboard.</li><li style="padding-bottom: 8px;">Click the "Services" tab in your Automated Social Media dashboard and add your social media account (Facebook/Twitter). Please note for adding Facebook:<ol><li style="padding:8px 0">To add your Facebook account, select Facebook Post</li><li style="padding-bottom: 8px;">To add your Facebook business account, select Facebook Fan Page</li></ol></li><li style="padding-bottom: 8px;">Once added, log out of your Agent Studio control panel. When you log back into your Agent Studio control panel, your Automated Social Media account will be all set. Automated Social Media will automatically start posting content from your website directly to your social media accounts.</li></ol><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;"><a href="https://agentstudio.zendesk.com/hc/en-us/articles/115000617991-How-do-I-activate-Automated-Social-Media-on-my-Agent-Studio-website-" title="Click here">Click here</a> to access the "Get Started" guide for Automated Social Media.</p>'
WHERE Id = 6

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
