USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_euromillon(@semana_id, 13, 25, 34, 43, 48, 04, 05, 07);
