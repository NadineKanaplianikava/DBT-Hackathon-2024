SELECT DATEDIFF(DAY, MIN(b.ORDER_DELIVERED), MAX(a.LAST_ORDER_DATE)) as non_buy,
    COUNT(a."ID") as Lost_customers    
FROM
        {{ ref('model') }} a
LEFT JOIN
        {{ ref('model1') }} b 
            ON a."ID" = b."CUSTOMER_ID"
GROUP BY
        a."ID"
    HAVING DATEDIFF(DAY, MIN(b.ORDER_DELIVERED), MAX(a.LAST_ORDER_DATE)) >= 90
 
