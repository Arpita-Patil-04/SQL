# Write your MySQL query statement below
with cte as(
    select d.name as Department,e.name as Employee,e.salary as Salary,DENSE_RANK() over(partition by e.departmentid order by e.salary desc) as DR from Employee e left join department d on e.departmentId = d.id
)
select Department,Employee,Salary from cte where DR in (1,2,3)