Select DISTINCT sc.AppGuid, FacebookAppId, FacebookAdminId, SiteName, Email
From Sites.Config as sc
Inner Join dbo.sites as ds
ON ds.AppGUID = sc.AppGUID
WHERE FacebookAppId IS NOT NULL
AND FacebookAppId != ''
AND FacebookAdminId IS NOT NULL
AND FacebookAdminId != ''
AND IsActive != 0
AND IsDeleted != 1
AND IsCancelled != 1
