SELECT * FROM Younique.orders 
WHERE order_market_id=1
AND order_status_id IN (3,5,8)
HAVING order_type_id=7
ORDER BY id DESC;