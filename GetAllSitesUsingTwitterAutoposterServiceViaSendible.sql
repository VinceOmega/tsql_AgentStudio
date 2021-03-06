/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT TOP 1000 [SiteConfigGuid]
      ,sc.AppGuid
	  ,sa.DomainName
      ,[SendibleAutoposterTwitter]
  FROM [AgentStudio].[Sites].[Config] as sc
  INNER JOIN AgentStudio.dbo.site_aliases as sa
  ON sc.AppGuid = sa.AppGUID
  WHERE SendibleAutoposterTwitter = 1