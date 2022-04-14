USE penadb;

SET @semana_id = 202215;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 15, '2022-04-11', 11, 0);


CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 00);


-- TODO rename: reintegro -> numero clave
CALL insert_boleto_gordo(@semana_id, 13, 15, 25, 34, 43, 48, 05);


CALL insert_boleto_lototurf(@semana_id, 04, 13, 14, 15, 22, 25, 02, 01);


CALL insert_boleto_primitiva8(@semana_id, 13, 15, 21, 25, 33, 43, 48, 49, 00);
CALL insert_boleto_primitiva8(@semana_id, 04, 05, 07, 13, 25, 33, 43, 48, 01);
CALL insert_boleto_primitiva8(@semana_id, 04, 13, 14, 18, 25, 33, 34, 48, 02);
CALL insert_boleto_primitiva8(@semana_id, 13, 14, 21, 22, 25, 26, 34, 48, 03);
CALL insert_boleto_primitiva8(@semana_id, 13, 14, 15, 25, 30, 34, 40, 48, 04);
CALL insert_boleto_primitiva8(@semana_id, 04, 13, 22, 25, 30, 33, 48, 49, 05);
CALL insert_boleto_primitiva8(@semana_id, 05, 13, 14, 15, 18, 25, 43, 48, 06);
CALL insert_boleto_primitiva8(@semana_id, 04, 05, 13, 22, 25, 30, 40, 48, 07);
CALL insert_boleto_primitiva8(@semana_id, 05, 13, 21, 22, 25, 30, 43, 48, 08);
CALL insert_boleto_primitiva8(@semana_id, 07, 13, 15, 21, 25, 30, 34, 48, 09);


CALL insert_boleto_primitiva7(@semana_id, 08, 11, 19, 28, 35, 37, 45, 00);
CALL insert_boleto_primitiva7(@semana_id, 11, 19, 28, 36, 44, 45, 47, 01);
CALL insert_boleto_primitiva7(@semana_id, 03, 06, 08, 11, 28, 36, 45, 02);
CALL insert_boleto_primitiva7(@semana_id, 03, 11, 12, 28, 36, 37, 45, 03);
CALL insert_boleto_primitiva7(@semana_id, 11, 12, 23, 28, 29, 37, 45, 04);
CALL insert_boleto_primitiva7(@semana_id, 11, 12, 19, 28, 35, 37, 45, 05);
CALL insert_boleto_primitiva7(@semana_id, 03, 11, 28, 29, 35, 45, 47, 06);
CALL insert_boleto_primitiva7(@semana_id, 06, 11, 12, 19, 28, 44, 45, 07);
CALL insert_boleto_primitiva7(@semana_id, 03, 06, 11, 23, 28, 35, 45, 08);
CALL insert_boleto_primitiva7(@semana_id, 06, 11, 28, 29, 35, 44, 45, 09);
CALL insert_boleto_primitiva7(@semana_id, 09, 10, 17, 24, 38, 39, 42, 00);
CALL insert_boleto_primitiva7(@semana_id, 10, 17, 24, 32, 41, 42, 46, 01);
CALL insert_boleto_primitiva7(@semana_id, 01, 02, 09, 10, 24, 32, 42, 02);
CALL insert_boleto_primitiva7(@semana_id, 01, 10, 16, 24, 32, 38, 42, 03);
CALL insert_boleto_primitiva7(@semana_id, 10, 16, 20, 24, 27, 38, 42, 04);
CALL insert_boleto_primitiva7(@semana_id, 10, 16, 17, 24, 31, 38, 42, 05);
CALL insert_boleto_primitiva7(@semana_id, 01, 10, 20, 24, 31, 38, 42, 06);
CALL insert_boleto_primitiva7(@semana_id, 02, 10, 16, 17, 24, 41, 42, 07);
CALL insert_boleto_primitiva7(@semana_id, 01, 02, 10, 24, 31, 39, 42, 08);
CALL insert_boleto_primitiva7(@semana_id, 02, 10, 24, 27, 31, 41, 42, 09);
