-- configuring data type to table



with source_data as (
SELECT
    "DELIVERY DATE" :: VARCHAR(255) AS VEH_DELIVERY_DATE_DTC,
    "ETA" :: VARCHAR(255) AS EXPECTED_TIME_ARRIVAL,
    "MONTH/YEAR" :: VARCHAR(255) AS VEHICLE_PROCURED_MONTH,
    "CONSIGNMENT" :: VARCHAR(255) AS CONSIGNMENT,
    "PLATFORM" :: VARCHAR(255) AS PLATFORM_VEH_MOVING_TO,
    "MOVEMENT TYPE" :: VARCHAR(255) AS VEH_MOVEMENT_TYPE,
    "PICK-UP LOCATION" :: VARCHAR(255) AS VEHICLE_PICKUP_LOCATION,
    "DROP LOCATION":: VARCHAR(255)  AS VEHICLE_DROP_LOCATION,
    UPPER("REG #"):: VARCHAR(255)  AS REGISTRATION_NUMBER,
    -- "MODEL" AS MODEL,
    -- "CHASSIS NUMBER" AS VEHICLE_CHASIS_NUMBER,
    -- "ENGINE NUMBER" AS VEHICLE_ENGINE_NUMBER,
    "KEY AVAILABILITY" :: VARCHAR(255) AS VEH_KEY_AVAILABITY,
    "PARKING CHARGES" :: VARCHAR(255) AS PARKING_CHARGES,
    "TRUCK COST/PETROL COST":: VARCHAR(255)  AS VEHICLE_MOVEMENT_COST,
    "LABOUR COST" :: VARCHAR(255) AS LABOUR_COST,
    "OVERALL COST FOR TRANSPORTATION":: VARCHAR(255)  AS TOTAL_TRANSPORTATION_COST,
    "PER VEHICLE COST":: VARCHAR(255)  AS TRANSPORTATION_COST_PER_VEHICLE,
    "TASK MASTER":: VARCHAR(255)  AS VEHICLE_TASK_MASTER,
    "CURRENT STATUS" :: VARCHAR(255) AS VEHICLE_REFURBISHMENT_STATUS,
    "LOCATION":: VARCHAR(255)  AS VEHICLE_REGISTERED_STATE,
    "SORTING DECISION" :: VARCHAR(255) AS VEHICLE_TO_RETAIL_OR_WHOLESALE

    FROM RAW_DATA.LOGISTICS
)



SELECT *
FROM source_data