SELECT p.presenter_sequence_id, p.id presenter_id, u.id user_id, u.first_name, u.last_name, 
	   c.first_surname, c.second_surname, c.curp_code, c.rfc_code, c.curp_id_doc, c.curp_id_filename, c.curp_address_doc, c.curp_address_filename, c.curp_verified, c.verified_status
FROM presenters p 
LEFT JOIN presenter_curp c ON p.id = c.presenter_id
LEFT JOIN users u ON p.user_id = u.id
WHERE p.presenter_status_id=3 # Active
AND p.market_id=6 # Mexico 
AND c.curp_verified > 0
ORDER BY p.id DESC;