WITH raw_listings AS (
    SELECT id AS listing_id,
    name AS listing_name,
    listing_url,
    room_type,
    minimum_nights,
    host_id,
    price AS price_str,
    created_at,
    updated_at
    FROM {{ source('airbnb', 'listings')}})
SELECT * FROM raw_listings

