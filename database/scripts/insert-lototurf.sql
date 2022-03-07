USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_lototurf(@semana_id, 04, 05, 13, 21, 22, 26, 02, 01);
