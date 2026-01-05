{{ config(materialized = 'table')}}

SELECT 
    fr.*,
    CASE
        WHEN sd.release_date IS NULL THEN 'unknown'
        ELSE 'known'
    END as release_info_available
FROM    
    {{ref('fct_ratings')}} fr 
LEFT JOIN
    {{ ref('seed_movie_release_dates')}} sd 
    ON fr.movie_id = sd.movie_id