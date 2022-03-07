USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_gordo(@semana_id, 05, 13, 21, 22, 34, 48, 04);
