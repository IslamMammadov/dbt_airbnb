SELECT * 
FROM 
    {{ ref('dim_listings_cleaned')}}

WHERE minimum_nights < 1
LIMIT 10