
  
    

        create or replace transient table INVX_DATABASE.CLEANED_DATA.SALES
         as
        (

with source_data as (
    SELECT 
    "STATE":: VARCHAR(255)  AS VEHICLE_REGISTERED_STATE,
    "RTO" :: VARCHAR(255) AS VEHICLE_RTO_CITY,
    UPPER("TOTAL VEHICLE MASTER") :: VARCHAR(255) AS REGISTRATION_NUMBER,
    "JOURNEY COMPLETE?" :: VARCHAR(255) AS VEHICLE_JOURNEY_STATUS,
    "VEHICLE" :: VARCHAR(255) AS MODEL,
    "QC PASSED":: VARCHAR(255)  AS QC_PASSED_DATE,
    "DELIVERY DATE":: VARCHAR(255)  AS VEH_DELIVERY_DATA,
    "FLOOR STOCK":: VARCHAR(255)  AS FLOOR_STOCK_VEHICLE,
    "RECEIVED LOCATION" :: VARCHAR(255) AS VEHICLE_RECEIVED_LOCATION,
    "RC STATUS" :: VARCHAR(255) AS RC_CURRENT_STATUS,
    "RETAIL SELECTION":: VARCHAR(255)  AS RETAIL_NAME,
    "FOFO FREEZING" :: VARCHAR(255) AS FOFO_FREEZING,
    "COCO FREEZING" :: VARCHAR(255) AS COCO_FREEZING,
    "PAAS FREEZING":: VARCHAR(255)  AS PAAS_FREEZING,
    "VEHICLE AVAILABLE?":: VARCHAR(255)  AS VEHICLE_AVILABLILITY_FOR_SALE,
    "REFURB(Y/N)":: VARCHAR(255)  AS VEHICLE_REFURB_STATUS,
    "PROCUREMENT SOURCE" :: VARCHAR(255) AS PROCUREMENT_SOURCE,
    "REQUEST DATE" :: VARCHAR(255) AS VEHICLE_FREEZING_REQUEST_DATE,
    "TENTATIVE SALES" :: VARCHAR(255) AS VEHICLE_TENTATIVE_SALE,
    "RC LOCATION" :: VARCHAR(255) AS RC_LOCATION,
    "MANF YR" :: VARCHAR(255) AS VEHICLE_MANUFACTURED_YEAR,
    "OWNER":: VARCHAR(255)  AS VEHICLE_OWNERSHIP_NUMBER,
    "DECISION" :: VARCHAR(255) AS VEHICLE_RETAIL_DECISION,
    "YARD LOCATION":: VARCHAR(255)  AS VEHICLE_YARD_LOCATION,
    "PROCUREMENT" :: VARCHAR(255) AS VEHICLE_PROCURED_DATE,
    "LEAD TIME FOR RC":: VARCHAR(255)  AS LEAD_TIME_FOR_RC,
    "AGEING" :: VARCHAR(255) AS AGE_FROM_PROCUREMENT_TILLDATE

    FROM RAW_DATA."VEH MAPING LIST"
)

SELECT * FROM source_data
        );
      
  