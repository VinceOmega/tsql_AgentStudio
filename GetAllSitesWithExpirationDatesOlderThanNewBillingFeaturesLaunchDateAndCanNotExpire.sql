SELECT	TOP 1000 *
FROM	AgentStudio.dbo.sites
WHERE	CanExpire = 0
AND		IsCancelled = 0
AND		IsDeleted = 0
AND		IsDeveloperSite = 0
AND		IsTestSite	= 0
AND		InTrial		= 0
AND		ExpirationDate < '2017-06-28'