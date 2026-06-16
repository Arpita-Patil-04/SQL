# Write your MySQL query statement below
with cte as(
select t.status,t.request_at from trips t 
join users c on t.client_id = c.users_id  
join users d on t.driver_id = d.users_id
where c.banned = "No" and d.banned ="No"
and t.request_at between "2013-10-01" and "2013-10-03"
)

select request_at as Day,round(avg(CASE WHEN status!="completed" then 1 else 0 END),2) as 'Cancellation Rate' from cte group by request_at

