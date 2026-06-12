/* Write your T-SQL query statement below */
with cte as(
    select *,row_number() over(partition by email order by id) [Row Number] from Person
)
select email from cte where [Row Number] = 2