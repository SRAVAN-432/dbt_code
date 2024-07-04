{{ config(materialized='table') }}


WITH tB2 as(
 select id ,
        ORDER_ID,
        PAYMENT_METHOD,
        AMOUNT
     from {{source('datafeed_shared_schemaa','STG_PAYMENTS')}})
     select * from tb2