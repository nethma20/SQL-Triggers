create trigger tr_insertion on author
for insert 
as
begin
insert into authors_audit(author_id,author_fname,author_lname,author_address,last_update)
select author_id,author_fname,author_lname,author_address,GETDATE()
from inserted
end