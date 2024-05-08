
    SELECT 
        "ID", 
        TOTAL_ORDERED_AMOUNT/TRANSACTION_COUNT AS AvgOrderValue,
        TRANSACTION_COUNT  AS orderCount
    FROM {{ ref('model') }}
    WHERE TOTAL_ORDERED_AMOUNT IS NOT NULL AND ORDERCOUNT >2
        
    GROUP BY all
    orDER BY 2 DESC 

