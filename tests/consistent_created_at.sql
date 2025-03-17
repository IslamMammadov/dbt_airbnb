SELECT * 
FROM {{ ref('fct_reviews')}} AS f
WHERE EXISTS (SELECT 1 FROM {{ ref('dim_listings_cleaned')}} AS  l
               WHERE l.listing_id = f.listing_id 
                    AND l.created_at > f.review_date )