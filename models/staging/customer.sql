{{ config(materialized='table') }}


WITH tB2 as(
 select id ,
        first_name,
        last_name
     from {{source('datafeed_shared_schemaa','STG_CUSTOMERDATA')}})
     select * from tb2
