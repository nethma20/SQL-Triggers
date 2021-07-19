create trigger tr_update on Employee_Demo
after update
as
begin
insert into Employee_Demo_Audit(Emp_ID,Emp_name,Emp_sal,Audit_Action)
select Emp_ID,Emp_name,Emp_sal,GETDATE()
from inserted
end