/*WITH ratings AS
(
    SELECT DISTINCT user_id FROM {{ ref('src_ratings')}}
),

tags AS 
(
    SELECT DISTINCT user_id FROM {{ ref('src_tags')}}
)

SELECT DISTINCT user_id
FROM   
(
    SELECT * FROM ratings
    UNION
    SELECT * FROM tags
)
*/


SELECT DISTINCT sr.user_id 
FROM {{ ref('src_ratings')}} sr
INNER JOIN {{ ref('src_tags')}} st 
    ON st.user_id = sr.user_id