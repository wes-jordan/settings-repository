SELECT 
    reference_id oid, COUNT(id) qty
FROM
    Younique.user_notes n
WHERE
    reference_type = 'order'
        AND reference_id IS NOT NULL
GROUP BY user_id
HAVING qty > 1
ORDER BY reference_id
LIMIT 10;
