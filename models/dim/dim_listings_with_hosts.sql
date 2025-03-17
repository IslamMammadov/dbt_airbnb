WITH h AS (
    SELECT * FROM {{ ref("dim_hosts_cleaned")}}
)
, l AS (
    SELECT * FROM {{ ref("dim_listings_cleaned")}}
)
SELECT
l.listing_id,
l.listing_name,
l.room_type,
l.minimum_nights,
l.price,
l.host_id,
h.host_name,
h.is_superhost as host_is_superhost,
l.created_at,
GREATEST(l.updated_at,h.updated_at) AS updated_at
FROM l 
LEFT JOIN h ON (h.host_id = l.host_id)

--dowdload csv
--curl https://dbtlearn.s3.us-east-2.amazonaws.com/seed_full_moon_dates.csv -o seeds/seeds_full_moon_dates.csv
