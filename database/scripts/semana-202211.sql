USE penadb;

SET @semana_id = 202211;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 11, '2022-03-14', 10, 0);


CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 04);


CALL insert_boleto_euromillon(@semana_id, 13, 25, 34, 43, 48, 04, 05, 07);


-- TODO rename: reintegro -> numero clave
CALL insert_boleto_gordo(@semana_id, 13, 15, 25, 34, 43, 48, 05);


CALL insert_boleto_lototurf(@semana_id, 04, 13, 14, 15, 22, 25, 01, 04);


CALL insert_boleto_primitiva(@semana_id, 13, 15, 21, 25, 33, 43, 48, 49, 00);
CALL insert_boleto_primitiva(@semana_id, 04, 05, 07, 13, 25, 33, 43, 48, 01);
CALL insert_boleto_primitiva(@semana_id, 04, 13, 14, 18, 25, 33, 34, 48, 02);
CALL insert_boleto_primitiva(@semana_id, 13, 14, 21, 22, 25, 26, 34, 48, 03);
CALL insert_boleto_primitiva(@semana_id, 13, 14, 15, 25, 30, 34, 40, 48, 04);
CALL insert_boleto_primitiva(@semana_id, 04, 13, 22, 25, 30, 33, 48, 49, 05);
CALL insert_boleto_primitiva(@semana_id, 05, 13, 14, 15, 18, 25, 43, 48, 06);
CALL insert_boleto_primitiva(@semana_id, 04, 05, 13, 22, 25, 30, 40, 48, 07);
CALL insert_boleto_primitiva(@semana_id, 05, 13, 21, 22, 25, 30, 43, 48, 08);
CALL insert_boleto_primitiva(@semana_id, 07, 13, 15, 21, 25, 30, 34, 48, 09);
