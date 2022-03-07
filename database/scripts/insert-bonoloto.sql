USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_bonoloto(@semana_id, 05, 13, 21, 22, 25, 34, 48, 01);
