select hrd.Name,count(hrd.Name) as Count from HumanResources.Employee e inner join HumanResources.EmployeePayHistory p on 
p.BusinessEntityID = e.BusinessEntityID inner join HumanResources.EmployeeDepartmentHistory d on 
e.BusinessEntityID = d.BusinessEntityID inner join HumanResources.Department hrd on 
hrd.DepartmentID = d.DepartmentID group by hrd.Name;