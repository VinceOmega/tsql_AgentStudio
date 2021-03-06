/****** Script for SelectTopNRows command from SSMS  ******/
SELECT pb.[PageGUID]
,		ad.[AssociableDataGuid]
      ,ad.[JoinType]
      ,ad.[JoinGuid]
      ,ad.[DataType]
      ,ad.[DataValue]
      ,ad.[SortOrder]
      ,ad.[CreatedDate]
      ,ad.[CreatedBy]
      ,ad.[LastModified]
      ,ad.[ModifiedBy]
	  ,sp.[AppGUID]
	  ,site.[HomePageGUID]
		
  FROM [AgentStudio].[dbo].[page_blueprint] as pb
  INNER JOIN [AgentStudio].[dbo].[associable_data] as ad
  ON pb.blueprintguid = ad.joinguid
  INNER JOIN [AgentStudio].[dbo].[site_pages] as sp
  ON pb.[PageGUID] = sp.[PageGUID]
  INNER JOIN [AgentStudio].[dbo].[sites] as site
  ON sp.[AppGUID] = site.[AppGUID]
  WHERE ad.[DataValue] = ''
  AND (pb.ZoneGUID = 'd6f871e8-f5de-07a0-9248-c4e4024a3a9d'
  OR pb.ZoneGUID = '71aafbbd-9c4e-e971-fa48-a66c328939c9'
  OR pb.ZoneGUID = 'd678064a-a9e5-f68c-7210-2930342c3956')