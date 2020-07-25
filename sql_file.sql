----QUESTION 1
--SELECT COUNT(*) FROM users;

----QUESTION 2
--SELECT COUNT(*)
--FROM transfers
--    WHERE send_amount_currency = 'CFA';
	
----QUESTION 3
--SELECT DISTINCT COUNT(u_id) FROM transfers
--    WHERE send_amount_currency = 'CFA';
	
-----QUESTION 4
--SELECT TO_CHAR(when_created,'MON') AS mon, TO_CHAR(when_created,'YYYY') as year, COUNT(*)
--	FROM agent_transactions
--	WHERE when_created BETWEEN '2018-01-01' AND '2018-12-31'
--	GROUP BY mon,year
	
	
	
------QUESTION 5
--SELECT * FROM
--(SELECT COUNT(*) as net_depositors_count FROM 
--(SELECT agent_id, SUM(amount) as trx_vol FROM agent_transactions
--    	WHERE when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--		GROUP BY agent_id) as tbl
--WHERE trx_vol < 0) net_depositors_tbl
--,
--(SELECT COUNT(*) as net_withdrawers_count FROM 
--(SELECT agent_id, SUM(amount) as trx_vol FROM agent_transactions
--    	WHERE when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--		GROUP BY agent_id) as tbl
--WHERE trx_vol > 0) net_withdrawers_tbl


-----QUESTION 6
--SELECT ag.city as city, SUM(amount) as volume FROM agent_transactions at
--	    LEFT JOIN agents ag ON ag.agent_id = at.agent_id
--    	WHERE at.when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--		GROUP BY city
		
-----QUESTION 7
--SELECT ag.country as country, ag.city as city, SUM(amount) as volume FROM agent_transactions at
--	    LEFT JOIN agents ag ON ag.agent_id = at.agent_id
--   	WHERE at.when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--		GROUP BY country,city		
		
		
-----QUESTION 8
--SELECT ag.country,t.kind,sum(t.send_amount_scalar) as volume FROM transfers t
--LEFT JOIN agent_transactions at ON t.u_id = at.u_id
--LEFT JOIN agents ag  ON ag.agent_id = at.agent_id
--   WHERE t.when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--   GROUP BY ag.country, t.kind
	
	
-----QUESTION 9
--SELECT ag.country,t.kind,sum(t.send_amount_scalar) as volume, count(send_amount_scalar) as trx_count,
--(SELECT DISTINCT COUNT(t.u_id)) as unique_senders_count
--FROM transfers t
--LEFT JOIN agent_transactions at ON t.u_id = at.u_id
--LEFT JOIN agents ag  ON ag.agent_id = at.agent_id
--   WHERE t.when_created BETWEEN CURRENT_TIMESTAMP - interval '7 days' AND CURRENT_TIMESTAMP
--   GROUP BY ag.country, t.kind	
   
-----QUESTION 10
--SELECT source_wallet_id,sum(send_amount_scalar) as amount_sent_cfa FROM transfers
--WHERE send_amount_scalar > 10000000 and send_amount_currency = 'CFA' and when_created BETWEEN CURRENT_TIMESTAMP - interval '30 days' AND CURRENT_TIMESTAMP
--GROUP BY source_wallet_id
   
   
   
		
		
		

	
    