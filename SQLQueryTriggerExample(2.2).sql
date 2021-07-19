CREATE TRIGGER tr_insert ON Employee_Demo
AFTER INSERT
AS
BEGIN

INSERT INTO Employee_Demo_Audit (Emp_ID, Emp_Name, Emp_Sal, Audit_Timestamp)

SELECT Emp_ID, Emp_Name, Emp_Sal, GETDATE()
FROM inserted 

END