<<<<<<< HEAD

 SELECT 
    AVG(lifespan) AS average_lifespan
FROM (
    SELECT
        a."ID",
        DATEDIFF(DAY, MIN(b."ORDER_DELIVERED"), MAX(a."LAST_ORDER_DATE")) AS lifespan
    FROM
        {{ ref('model') }} a
    LEFT JOIN
        {{ ref('model1') }} b 
            ON a."ID" = b."CUSTOMER_ID"
    GROUP BY
        a."ID"
) AS lifespans



=======
<<<<<<< HEAD
select ID, LAST_ORDER_DATE
from {{ref('model')}}
>>>>>>> daaf857 (	modified:   models/example/sqlproject/model.sql)

=======
>>>>>>> 48bbebe (	modified:   models/example/sqlproject/model.sql)
