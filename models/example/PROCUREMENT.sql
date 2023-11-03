
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

WITH source_data AS (
  SELECT
    "REG NO":: VARCHAR(100) AS REGISTRATION_NUMBER,
    "MAKE":: VARCHAR(100) AS BRAND,
    "MODEL":: VARCHAR(100) AS MODEL,
    "MONTH":: VARCHAR(50) AS VEHICLE_PROCURED_MONTH,
    "LAN NO":: VARCHAR(200) AS LOAN_ACCOUNT_NUMBER,
    "STATE":: VARCHAR(200) AS VEHICLE_PROCURED_STATE,
    "CITY":: VARCHAR(200) AS VEHICLE_PROCURED_CITY,
    "SOURCE":: VARCHAR(200) AS FINANCIER,
    "PLATFORM":: VARCHAR(200) AS VEHICLE_PROCURED_PLATFORM,
    "CATEGORY":: VARCHAR(200) AS VEHICLE_CATEGORY,
    "YEAR":: VARCHAR(20) AS VEHICLE_MANUFACTURED_YEAR,
    "RC AVAILABILITY":: VARCHAR(100) AS RC_AVAILABILITY_STATUS,
    "COST":: VARCHAR(10) AS PROCURED_COST,
    "A/C NO.":: VARCHAR(50) AS PROCUREMENT_PAYMENT_ACCOUNT,
    "IFSC":: VARCHAR(40) AS PROCUREMENT_PAYMENT_IFSC,
    "A/C NAME":: VARCHAR(100) AS PROCUREMENT_PAYMENT_ACCOUNT_NAME,
    "PARTICULARS":: VARCHAR(500) AS PROCUREMENT_PAYMENT_PARTICULARS,
    "CONFIRMATION DATE":: VARCHAR(50) AS CUSTOMER_CONFIRMED_DATE,
    "PAYMENT DATE":: VARCHAR(50) AS PROCUREMENT_PAYMENT_DATE,
    "OWNERSHIP DATE":: VARCHAR(50) AS PROCUREMENT_OWNERSHIP_DATE,
    "PAYMENT STATUS":: VARCHAR(500) AS PROCUREMENT_PAYMENT_STATUS,
    "VEHICLE RECEIVED":: VARCHAR(50) AS PROCUREMENT_VEHICLE_RECEIVED_STATUS,
    "REVEIVED DATE":: VARCHAR(50) AS PROCUREMENT_VEHICLE_RECEIVED_DATE,
    "RC RECEIVED":: VARCHAR(200) AS PRESALE_RC_RECEIVED_STATUS,
    "RC RECEIVED DATE":: VARCHAR(200) AS PRESALE_RC_RECEIVED_DATE,
    "NOC RECEIVED":: VARCHAR(200) AS PRESALE_NOC_RECEIVED_STATUS,
    "NOC RECEIVED DATE":: VARCHAR(200) AS PRESALE_NOC_RECEIVED_DATE,
    "CONFIRMATION LINK":: VARCHAR(500) AS PROCUREMENT_CONFIRMATION_LINK,
    "REMAKRS":: VARCHAR(1000) AS PROCURED_REMARKS,
    "PICK UP":: VARCHAR(200) AS PROCUREMENT_PICKUP_LOCATION,
    "DROP":: VARCHAR(200) AS PROCUREMENT_DROP_LOCATION,
    "REFUND DATE":: VARCHAR(200) AS PROCUREMENT_REFUND_DATE,
    "UTR DETAILS":: VARCHAR(500) AS PROCUREMENT_UTR_DETAILS,
    "MODE OF PAYMENT":: VARCHAR(200) AS PROCUREMENT_REFUND_PAYMENT_MODE,
    "CHALLAN":: VARCHAR(200) AS PROCUREMENT_CHALLAN_AMOUNT,
    "PAAS":: VARCHAR(200) AS PROCUREMENT_PAAS_STATUS,
    "RTO CODE":: VARCHAR(200) AS VEHICLE_RTO_CODE,
    "RTO ZONE":: VARCHAR(200) AS VEHICLE_RTO_ZONE,
    "RTO CITY":: VARCHAR(200) AS VEHICLE_RTO_CITY,
    "RETAIL DECISION":: VARCHAR(200) AS VEHICLE_RETAIL_DECISION
  FROM LIVE_RAW_DATA.PROCUREMENT

)

SELECT *
FROM source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
