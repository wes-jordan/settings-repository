SELECT p.presenter_sequence_id, p.id presenter_id, u.id user_id, u.first_name, u.last_name 
FROM Younique.presenters p 
LEFT JOIN Younique.users u ON p.user_id = u.id
WHERE p.presenter_status_id=3
AND p.market_id=1
ORDER BY p.id DESC;