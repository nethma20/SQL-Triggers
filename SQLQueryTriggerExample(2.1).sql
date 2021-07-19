create trigger insert_TimeAction on Employee_Demo
after insert
as
begin
insert into Employee_Demo_Audit(EmpID,Emp_name,Emp_sal,Audit_Action,Audit_timestamp)
select Emp_ID,Emp_name,Emp_sal,GETDATE()
from inserted
end