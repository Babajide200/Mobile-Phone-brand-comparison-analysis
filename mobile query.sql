-----------Find out the price of 5 most expensive phones----------

select* from mobile.mobile
order by price desc
limit 5

-------Find out the price of 5 most cheapest phones-----------

select* from mobile.mobile
order by price asc
limit 5

----- List of top 5 samsung phones with price and all features -------
select* from mobile.mobile
where brands = "samsung"
order by price desc
limit 5

-----. Must have android phone list then top 5 high price android phones----
select* from mobile.mobile 
where operating_system_type = "android"
order by Price desc
limit 5

-----Must have android phone list then top 5 lower price android phones-----
select* from mobile.mobile
where operating_system_type = "android"
order by price asc
limit 5

----Must have iphone list then top 5 high price ios phones-------
select* from mobile.mobile
where operating_system_type = "ios"
order by price desc
limit 5

----Must have iphone list then top 5 lower price ios phones-------
select* from mobile.mobile
where operating_system_type = "ios"
order by price asc
limit 5

------write a query which phone support 5g and also top 5 phone with 5g support---------
select* from mobile.mobile
where 5g_availability = "yes"
order by price desc
limit 5

------total price of all mobile is to be found with brand name------------
SELECT brand, 
SUM(price) AS total_price
FROM mobile.mobile
GROUP BY brand
order by total_price desc