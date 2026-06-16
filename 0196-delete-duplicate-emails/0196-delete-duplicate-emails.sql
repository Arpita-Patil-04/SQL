# Write your MySQL query statement below
with cte as(
    select *,ROW_NUMBER() over(partition by email order by id) as RN from Person
)
DELETE p from Person p join cte on p.id = cte.id where cte.RN > 1