with vendor_performance as (select  VendorID,
        round(count(trip_distance),2)as total_pickup,
        round(sum(trip_distance),2) as total_trip_distance,
        round(avg(trip_distance),2) as average_trip_distance,
        sum(passenger_count) as total_passenger,
        round(avg(passenger_count),2) as average_passenger,
        round(sum (total_amount),2) as total_amount,
        round(avg(total_amount),2) as average_amount
from {{ref('performance')}}
group by VendorID
order by VendorID asc)
select * from vendor_performance
