SELECT		s.InTrial, s.AppId, s.AppGuid, s.SiteName, s.ExpirationDate, s.IsDelinquent,
			c.TravefyAccessToken, c.TravefyPublicKey, c.TravefyUserId, c.SendibleAPIKey, c.SendibleAutoposterFacebook, c.SendibleAutoposterTwitter, c.SendibleUserId, c.SendibleUserName, c.OdysseusApproval, c.OdysseusSalt
FROM		AgentStudio.dbo.sites s
INNER JOIN	AgentStudio.sites.config c ON c.AppGuid = s.AppGuid
WHERE		s.AppId IN ( 83317, 83318, 83331, 83332, 83334, 83335, 83336, 83337 )
ORDER BY	CreatedDate ASC


-----------------------------------------


-- Free Site - Standard - No Addons	- freesite-standard-noaddons.agentstudio.com	- Free Site - Standard - No Addons		- 406D40D2-D351-E711-A966-FF3BC7AFE33A - 83317
-- Free Site - Standard - Addons	- freesite-standard-addons.agentstudio.com		- Free Site - Standard - Addons			- 8419022F-D451-E711-A966-FF3BC7AFE33A - 83318
-- Free Site - Reseller - No Addons	- freesite-reseller-noaddons.agentstudio.com	- Free Site - Reseller - No Addons		- F69B261C-FA51-E711-A966-FF3BC7AFE33A - 83331
-- Free Site - Reseller - Addons	- freesite-reseller-addons.agentstudio.com		- Free Site - Reseller - Addons			- 0F0A606F-FA51-E711-A966-FF3BC7AFE33A - 83332

-- Paid Site - Standard - No Addons	- paidsite-standard-noaddons.agentstudio.com	- Paid Site - Standard - No Addons		- F4A6F242-FB51-E711-A966-FF3BC7AFE33A - 83334
-- Paid Site - Standard - Addons	- paidsite-standard-addons.agentstudio.com		- Paid Site - Standard - Addons			- 6C56058A-FB51-E711-A966-FF3BC7AFE33A - 83335
-- Paid Site - Reseller - No Addons	- paidsite-reseller-noaddons.agentstudio.com	- Paid Site - Reseller - No Addons		- BB9BE2B8-FB51-E711-A966-FF3BC7AFE33A - 83336
-- Paid Site - Reseller - Addons	- paidsite-reseller-addons.agentstudio.com		- Paid Site - Reseller - Addons			- 230A0D1A-FC51-E711-A966-FF3BC7AFE33A - 83337




	UPDATE	AgentStudio.dbo.sites
	SET		ExpirationDate = '2017-05-03 00:00:00',
			IsDelinquent = 0
	WHERE	AppId = 83317 OR
			AppId = 83318 OR
			AppId = 83331 OR
			AppId = 83332 OR
			AppId = 83334 OR
			AppId = 83335 OR
			AppId = 83336 OR
			AppId = 83337


SELECT		s.InTrial, s.AppId, s.AppGuid, s.SiteName, s.ExpirationDate, s.IsDelinquent,
			c.TravefyAccessToken, c.TravefyPublicKey, c.TravefyUserId, c.SendibleAPIKey, c.SendibleAutoposterFacebook, c.SendibleAutoposterTwitter, c.SendibleUserId, c.SendibleUserName, c.OdysseusApproval, c.OdysseusSalt
FROM		AgentStudio.dbo.sites s
INNER JOIN	AgentStudio.sites.config c ON c.AppGuid = s.AppGuid
WHERE		s.AppId IN ( 83317, 83318, 83331, 83332, 83334, 83335, 83336, 83337 )
ORDER BY	CreatedDate ASC




/*

	STAGING Process Billing Link: 

		staging.agentstudio.com/schedule/process_billing.cfm


	HOST FILE ENTRIES:

	10.30.0.25 		freesite-standard-noaddons.agentstudio.com 			# Staging - www13
	10.30.0.25   	freesite-standard-addons.agentstudio.com 			# Staging - www13
	10.30.0.25 		freesite-reseller-noaddons.agentstudio.com 			# Staging - www13
	10.30.0.25 		freesite-reseller-addons.agentstudio.com 			# Staging - www13
	10.30.0.25 		paidsite-standard-noaddons.agentstudio.com 			# Staging - www13
	10.30.0.25 		paidsite-standard-addons.agentstudio.com 			# Staging - www13
	10.30.0.25 		paidsite-reseller-noaddons.agentstudio.com 			# Staging - www13
	10.30.0.25 		paidsite-reseller-addons.agentstudio.com 			# Staging - www13

*/
