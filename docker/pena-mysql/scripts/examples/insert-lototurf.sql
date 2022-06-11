USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_lototurf(@semana_id, 04, 13, 14, 15, 22, 25, 01, 04);
