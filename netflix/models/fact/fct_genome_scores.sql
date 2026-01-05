
SELECT 
    movie_id,
    tag_id,
    ROUND(relevance,4) AS relevance_score
FROM   
    {{ref('src_genome_score')}}
WHERE
    relevance>0