{{
    config(
        materialized = 'incremental',
        on_schema_change = 'fail'
    )
}}

WITH src_review AS (
    SELECT * FROM {{ ref ("src_review")}}
)
SELECT {{ dbt_utils.generate_surrogate_key(['listing_id','review_date','reviewer_name','review_text']) }} as review_id
,*
 FROM src_review 
WHERE review_text IS NOT NULL
{% if is_incremental() %}
    {% if var("start_date", False) and var("end_date", False) %}
        {{ log('Loading' ~ this ~ 'incrementally (start_date: ' ~ var("start_date") ~ ', end_date: )' ~ var("end_date"), info = True)}}
        AND review_date >= '{{ var("start_date") }}'
        AND review_date <  '{{ var("end_date") }}'
    {% else %}
        AND review_date > (SELECT MAX(review_date) FROM {{ this }}) --this means fact_reviews table in the destination. 
        {{ log('Loading ' ~ this ~ ' incrementally(all variables are missing)', info = True) }}  --It compares data from view with table
    {% endif %}
{% endif %}