select * 
from {{ source('my_source', 'PIZZA_ORDERS') }}