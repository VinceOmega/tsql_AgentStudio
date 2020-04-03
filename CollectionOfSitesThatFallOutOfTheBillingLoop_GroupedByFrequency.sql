/* Any site that falls out of the billing loop from today */
SELECT	TOP 1000 *
FROM	AgentStudio.dbo.sites
WHERE	IsCancelled		= 0
AND		IsDeleted		= 0
AND		IsDeveloperSite = 0
AND		IsTestSite		= 0
AND		InTrial			= 0
AND		ExpirationDate <= DATEADD( day, -6, GETDATE() )
ORDER BY ExpirationDate DESC;

/* Any site has a expiration date greater than the monthly frequency */
SELECT	TOP 1000 *
FROM	AgentStudio.dbo.sites
WHERE	IsCancelled		= 0
AND		IsDeleted		= 0
AND		IsDeveloperSite = 0
AND		IsTestSite		= 0
AND		InTrial			= 0
AND		FrequencyId		= 3
AND		ExpirationDate <= DATEADD( day, -30, GETDATE() )
ORDER BY ExpirationDate DESC;

/* Any site has a expiration date greater than the semi-annually frequency */
SELECT	TOP 1000 *
FROM	AgentStudio.dbo.sites
WHERE	IsCancelled		= 0
AND		IsDeleted		= 0
AND		IsDeveloperSite = 0
AND		IsTestSite		= 0
AND		InTrial			= 0
AND		FrequencyId		= 2
AND		ExpirationDate <= DATEADD( day, -180, GETDATE() )
ORDER BY ExpirationDate DESC;

/* Any site has a expiration date greater than the annually frequency */
SELECT	TOP 1000 *
FROM	AgentStudio.dbo.sites
WHERE	IsCancelled		= 0
AND		IsDeleted		= 0
AND		IsDeveloperSite = 0
AND		IsTestSite		= 0
AND		InTrial			= 0
AND		FrequencyId		= 1
AND		ExpirationDate <= DATEADD( day, -360, GETDATE() )
ORDER BY ExpirationDate DESC;