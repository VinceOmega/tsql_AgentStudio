select p.Id, p.Name
from dbo.sites as s
left join dbo.packages as p
on p.id = s.PackageId
where s.AppGUID = 'BB9E9646-6DEE-4C4D-858F-392DC6DEDD85'