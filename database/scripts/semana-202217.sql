USE penadb;

SET @semana_id = 202217;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 17, '2022-04-25', 11, 0);


CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 08);


CALL insert_boleto_euromillon5m(@semana_id, 05, 13, 33, 43, 48, 05, 09, 10, 11, 12);
CALL insert_boleto_euromillon5m(@semana_id, 05, 13, 25, 34, 48, 01, 02, 03, 04, 06);
CALL insert_boleto_euromillon5m(@semana_id, 15, 25, 34, 43, 48, 01, 02, 03, 04, 08);
CALL insert_boleto_euromillon5m(@semana_id, 05, 15, 24, 33, 48, 07, 09, 10, 11, 12);
