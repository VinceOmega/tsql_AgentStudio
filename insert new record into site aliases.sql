Update [AgentStudio].[dbo].[site_aliases]
SET [IsPrimary] = '0'
WHERE [DomainName] = 'travelbn.agentstudio.com';

Insert into [AgentStudio].[dbo].[site_aliases] ([AppGUID], [DomainName], [IsPrimary] ,[IsDefault])
values ('8D54BB93-30DB-E511-98B5-001438BC341A', 'travelbn.com', '1', '0')
