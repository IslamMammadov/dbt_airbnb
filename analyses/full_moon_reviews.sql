WITH mart_full_moon_reviews AS(
    SELECT * FROM {{ ref("mart_full_moon_reviews")}}
)

SELECT 
    is_full_moon,
    review_sentiment,
    COUNT(1) AS review_cnt
    FROM mart_full_moon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment

