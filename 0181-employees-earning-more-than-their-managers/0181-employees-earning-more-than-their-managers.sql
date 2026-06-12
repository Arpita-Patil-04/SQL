/* Write your T-SQL query statement below */
select e.name Employee from Employee e inner join Employee m 
on e.managerId = m.id where e.salary>m.salary