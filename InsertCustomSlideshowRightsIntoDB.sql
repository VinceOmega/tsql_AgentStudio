/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */

	SELECT	*
	FROM	AgentStudio.Common.AddOns;

	UPDATE	AgentStudio.Common.AddOns
	SET		Name				= 'Automated Social Media',
			Description			= 'This addon grants access to our Automated Social Media integration. Just add your social media accounts and your Agent Studio site will automatically post your sites'' content and links to your social accounts daily!',
			BuildInstructions	= '<p><strong>Automated Social Media is now available!</strong></p><p>Now Automated Social Media can help you build your social media presence by automatically sharing content directly from your Agent Studio website. You can also share, schedule and track your own posts as well.  Instructions on how you can access Automated Social Media will be included in your Agent Studio welcome email.</p>',
			AddonInstructions	= '<p><strong>Automated Social Media </strong></p><p>Easily enhance your social media engagements as valuable content is shared to your Facebook and Twitter accounts to help convert your social connections into leads. This content is automatically shared directly from your Agent Studio website. For setup instructions please visit our <a href="/control-panel/faqs.html" title="FAQ page">FAQ page</a>.</p><p>View your Automated Social Media billing details below:</p>',
			EmailInstructions	= '<h2 style="text-align: center; margin: 0 0 10px 0; font-family: Helvetica, Arial, sans-serif; color: #333333; font-weight: normal;">Automated Social Media Setup Instructions</h2><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;">To setup Automated Social Media for your Agent Studio website, follow the steps below:</p><ol style="text-align: left;"><li style="padding-bottom: 8px;">Log into your website''s control panel. The Automated Social Media link will be available on the left navigation of your control panel.</li><li style="padding-bottom: 8px;">Click the Automated Social Media link and you will be logged into your Automated Social Media dashboard.</li><li style="padding-bottom: 8px;">Click the "Services" tab in your Automated Social Media dashboard and add your social media account (Facebook/Twitter). Please note for adding Facebook:<ol><li style="padding:8px 0">To add your Facebook account, select Facebook Post</li><li style="padding-bottom: 8px;">To add your Facebook business account, select Facebook Fan Page</li></ol></li><li style="padding-bottom: 8px;">Once added, log out of your Agent Studio control panel. When you log back into your Agent Studio control panel, your Automated Social Media account will be all set. Automated Social Media will automatically start posting content from your website directly to your social media accounts.</li></ol><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;"><a href="#" title="Click here">Click here</a> to access the "Get Started" guide for Automated Social Media.</p>'

	WHERE	Id		= 6;

	UPDATE	AgentStudio.Common.AddOns
	SET		Name				= 'Itinerary Builder',
			Description			= 'This addon grants access to our Itinerary Builder integration. Build beautiful rich-media itineraries and share them with your clients via email, pdf, companion mobile apps or on your Agent Studio website.',
			BuildInstructions	= '<p><strong>The Itinerary Builder is now available!</strong></p><p>You can now use the Itinerary Builder to build and share amazing itineraries. Instructions on how you can access your Itinerary Builder will be included in your Agent Studio welcome email.</p>',
			AddonInstructions	= '<p><strong>Itinerary Builder</strong></p><p>Save time, get organized, and win more clients by using our Itinerary Builder. Easily arrange flights, tours and accommodations on attractive itineraries. Become your clients'' virtual concierge while they are on their trip. For setup instructions please visit our <a href="/control-panel/faqs.html" title="FAQ page">FAQ page</a>.</p><p>View your Itinerary Builder billing details below:</p>',
			EmailInstructions	= '<h2 style="text-align: center; margin: 0 0 10px 0; font-family: Helvetica, Arial, sans-serif; color: #333333; font-weight: normal;">Itinerary Builder Setup Instructions</h2><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;">To access your Itinerary Builder account simply log into your website''s control panel. The Itinerary Builder link will be available on the left navigation of your control panel. Click the Itinerary Builder link and you will be logged into your Itinerary Builder dashboard.</p><p style="margin: 20px 0; font-family: Helvetica, Arial, sans-serif;"><a href="https://travefy.com/support" title="Click here">Click here</a> to access the "Get Started" guide for the Itinerary Builder.</p>'
				
	WHERE	Id		= 5;

	SELECT	*
	FROM	AgentStudio.Common.AddOns;



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
