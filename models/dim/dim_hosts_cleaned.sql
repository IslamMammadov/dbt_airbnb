{{
    config (
        materialized = 'view'
    )
}}

WITH src_hosts AS (
 SELECT 
 host_id,
 NVL(host_name,'Anonymous') AS host_name,
 is_superhost,
 created_at,
 updated_at
 FROM {{ ref("src_host")}}
 )
SELECT * FROM src_hosts 