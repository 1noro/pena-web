USE penadb;

SET @semana_id = 202216;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 16, '2022-04-18', 11, 0);


CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 01);


CALL insert_boleto_euromillon(@semana_id, 13, 25, 34, 43, 48, 04, 05, 07);


CALL insert_boleto_euromillon5m(@semana_id, 13, 15, 22, 48, 50, 01, 02, 03, 04, 05);
CALL insert_boleto_euromillon5m(@semana_id, 05, 15, 22, 33, 43, 01, 02, 03, 05, 06);
CALL insert_boleto_euromillon5m(@semana_id, 04, 15, 25, 34, 48, 01, 02, 05, 06, 07);
CALL insert_boleto_euromillon5m(@semana_id, 05, 13, 22, 33, 50, 01, 05, 06, 07, 08);
CALL insert_boleto_euromillon5m(@semana_id, 04, 13, 25, 33, 43, 05, 06, 07, 08, 09);
CALL insert_boleto_euromillon5m(@semana_id, 05, 13, 22, 34, 48, 06, 07, 08, 09, 10);
CALL insert_boleto_euromillon5m(@semana_id, 15, 25, 34, 43, 48, 07, 08, 09, 10, 11);
CALL insert_boleto_euromillon5m(@semana_id, 04, 05, 33, 34, 50, 08, 09, 10, 11, 12);
