SELECT p.presenter_sequence_id, p.id presenter_id, u.first_name, u.last_name, 
	   s.birth_town, s.birth_department, s.birth_country, s.nationality, s.gender, s.register_status, s.ssn, s.siret_number, 
       s.vat_number, s.kbis_doc, s.kbis_filename, s.vitale_doc, s.vitale_filename, s.siret_verified, s.verified_status
FROM presenters p 
LEFT JOIN presenter_siret s ON p.id = s.presenter_id
LEFT JOIN users u ON p.user_id = u.id
WHERE p.presenter_status_id=3 # Active
AND p.market_id=8 # France
#AND s.siret_verified > 0
ORDER BY p.id DESC;