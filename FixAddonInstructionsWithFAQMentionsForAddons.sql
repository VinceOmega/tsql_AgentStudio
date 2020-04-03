/* TEMPLATE FOR DOING USEFUL STUFF SAFELY */
BEGIN TRAN
BEGIN TRY


    /* DO USEFUL STUFF HERE */


	/* Fix the AddonInstructions for the Domain Manager */
  	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 1;

	UPDATE 	AgentStudio.Common.AddOns
	SET 	AddonInstructions		= '<p><strong></strong></p><p>You will be able to use the domain manager to add your own domain to your Agent Studio website. For setup instructions please visit our <a href="https://agentstudio.zendesk.com/hc/en-us" title="FAQ page" target="_blank">FAQ page</a>.</p><p>View your Domain Manager billing details below:</p>'
	WHERE 	Id = 1;

	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 1;

	/* Fix the AddonInstruction for the Itinerary Builder */
	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 5;

	UPDATE 	AgentStudio.Common.AddOns
	SET 	AddonInstructions		= '<p><strong>Itinerary Builder</strong></p><p>Save time, get organized, and win more clients by using our Itinerary Builder. Easily arrange flights, tours and accommodations on attractive itineraries. Become your clients'' virtual concierge while they are on their trip. For setup instructions please visit our <a href="https://agentstudio.zendesk.com/hc/en-us" title="FAQ page" target="_blank">FAQ page</a>.</p><p>View your Itinerary Builder billing details below:</p>'
	WHERE 	Id = 5;

	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 5;

	/* Fix the AddonInstruction for the Automated Social Media */
	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 6;

	UPDATE 	AgentStudio.Common.AddOns
	SET 	AddonInstructions		= '<p><strong>Automated Social Media </strong></p><p>Easily enhance your social media engagements as valuable content is shared to your Facebook and Twitter accounts to help convert your social connections into leads. This content is automatically shared directly from your Agent Studio website. For setup instructions please visit our <a href="https://agentstudio.zendesk.com/hc/en-us" title="FAQ page" target="_blank">FAQ page</a>.</p><p>View your Automated Social Media billing details below:</p>'
	WHERE 	Id = 6;

	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 6;

	/* Fix the AddonInstruction for the Cruise Booking Engine */
	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 7;

	UPDATE 	AgentStudio.Common.AddOns
	SET 	AddonInstructions		= '<p><strong>Automated Social Media </strong></p><p>Easily enhance your social media engagements as valuable content is shared to your Facebook and Twitter accounts to help convert your social connections into leads. This content is automatically shared directly from your Agent Studio website. For setup instructions please visit our <a href="https://agentstudio.zendesk.com/hc/en-us" title="FAQ page" target="_blank">FAQ page</a>.</p><p>View your Automated Social Media billing details below:</p>'
	WHERE 	Id = 7;

	SELECT TOP 1000 Id, Name, Description, AddonInstructions
  	FROM 	AgentStudio.Common.AddOns
	WHERE	Id = 7;

	


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
