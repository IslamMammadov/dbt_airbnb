WITH raw_review AS (
    SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
    FROM {{ source('airbnb', 'reviews')}}
)
 SELECT * FROM raw_review