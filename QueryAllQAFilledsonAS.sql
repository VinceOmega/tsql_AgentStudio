Select DISTINCT sc.AppGuid, GoogleAnalytics
From Sites.Config as sc
Inner Join dbo.sites as ds
ON ds.AppGUID = sc.AppGUID
WHERE GoogleAnalytics IS NOT NULL
AND GoogleAnalytics != ''
AND IsActive != 0
AND IsDeleted != 1
AND IsCancelled != 1
AND GoogleAnalytics LIKE '(function(%'
ORDER BY GoogleAnalytics