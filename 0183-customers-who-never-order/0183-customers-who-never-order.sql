/* Write your T-SQL query statement below */
select c.name [Customers] from Customers c LEFT JOIN Orders o on c.id = o.customerId where o.customerId is null