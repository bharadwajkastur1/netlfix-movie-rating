SELECT  
    tag_id,
    INITCAP(TRIM(tag)) as tag_name
FROM    
    {{ref('src_genome_tags')}}