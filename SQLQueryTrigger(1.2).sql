create trigger check_fname on author
instead of insert
as


declare @author varchar(10)

select @author=author_Fname
from inserted

if SUBSTRING(@author,1,1)<>'A'



