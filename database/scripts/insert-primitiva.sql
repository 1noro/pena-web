USE penadb;

SET @semana_id = 202210;

CALL insert_boleto_primitiva(@semana_id, 04, 05, 07, 13, 21, 25, 30, 48, 01);
CALL insert_boleto_primitiva(@semana_id, 04, 05, 13, 21, 25, 33, 48, 49, 02);
CALL insert_boleto_primitiva(@semana_id, 04, 07, 13, 15, 25, 26, 30, 48, 03);
CALL insert_boleto_primitiva(@semana_id, 04, 13, 15, 25, 26, 33, 48, 49, 04);
CALL insert_boleto_primitiva(@semana_id, 04, 07, 13, 21, 22, 25, 30, 48, 05);
CALL insert_boleto_primitiva(@semana_id, 13, 14, 21, 22, 25, 33, 48, 49, 06);
CALL insert_boleto_primitiva(@semana_id, 07, 13, 14, 25, 26, 30, 34, 48, 07);
CALL insert_boleto_primitiva(@semana_id, 13, 14, 25, 26, 33, 34, 48, 49, 08);
CALL insert_boleto_primitiva(@semana_id, 07, 13, 14, 21, 25, 30, 43, 48, 09);
CALL insert_boleto_primitiva(@semana_id, 13, 14, 25, 26, 33, 43, 48, 49, 10);
