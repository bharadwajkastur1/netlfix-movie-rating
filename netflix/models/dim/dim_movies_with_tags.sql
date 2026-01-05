{{
    config(
        materialized = 'ephemeral'
    )
}}

SELECT 
    m.movie_id,
    m.movie_title,
    m.genres,
    t.tag_name,
    s.relevance_score
FROM    
    {{ ref('dim_movies') }} m 
LEFT JOIN
    {{ ref('fct_genome_scores')}} s 
    ON m.movie_id = s.movie_id
LEFT JOIN   
    {{ ref('dim_genome_tags')}} t 
    on t.tag_id = s.tag_id