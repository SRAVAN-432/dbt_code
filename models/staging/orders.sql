{{ config(materialized='table') }}


WITH tb1  as(
 select
        id ,
        ORDER_DATE,
        USER_ID
     from {{source('datafeed_shared_schema','STG_ORDER')}})
     select * from tb1
