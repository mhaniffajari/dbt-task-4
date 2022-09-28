with performance as(
    select * 
    from {{ref('source-table')}}
    where passenger_count >=1 and EXTRACT(YEAR FROM DATE(lpep_pickup_datetime))>= 2021)
    select * from performance