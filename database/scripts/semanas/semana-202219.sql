USE penadb;

SET @semana_id = 202219;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 19, '2022-05-09', 11, 0);

-- BONOLOTO --------------------------------------------------------------------
CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 04);

-- EUROMILLON ------------------------------------------------------------------
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 22, 39, 48, 01, 02);
CALL insert_boleto_euromillon2m(@semana_id, 07, 14, 34, 39, 48, 01, 03);
CALL insert_boleto_euromillon2m(@semana_id, 07, 20, 25, 33, 46, 01, 04);
CALL insert_boleto_euromillon2m(@semana_id, 04, 13, 15, 34, 39, 01, 05);
CALL insert_boleto_euromillon2m(@semana_id, 04, 15, 22, 25, 48, 01, 06);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 25, 41, 46, 01, 07);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 15, 41, 46, 01, 08);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 07, 41, 46, 01, 09);
CALL insert_boleto_euromillon2m(@semana_id, 04, 22, 39, 41, 48, 01, 10);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 25, 39, 41, 01, 11);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 25, 39, 41, 01, 12);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 15, 39, 41, 02, 03);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 07, 39, 41, 02, 04);
CALL insert_boleto_euromillon2m(@semana_id, 34, 39, 41, 46, 48, 02, 05);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 25, 33, 34, 02, 06);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 15, 33, 34, 02, 07);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 07, 33, 34, 02, 08);
CALL insert_boleto_euromillon2m(@semana_id, 33, 34, 41, 46, 48, 02, 09);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 15, 25, 33, 02, 10);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 07, 25, 33, 02, 11);
CALL insert_boleto_euromillon2m(@semana_id, 25, 33, 41, 46, 48, 02, 12);
CALL insert_boleto_euromillon2m(@semana_id, 22, 25, 41, 46, 48, 03, 04);
CALL insert_boleto_euromillon2m(@semana_id, 22, 25, 33, 34, 39, 03, 05);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 41, 46, 48, 03, 06);
CALL insert_boleto_euromillon2m(@semana_id, 20, 22, 33, 34, 39, 03, 07);
CALL insert_boleto_euromillon2m(@semana_id, 15, 20, 41, 46, 48, 03, 08);
CALL insert_boleto_euromillon2m(@semana_id, 15, 20, 33, 34, 39, 03, 09);
CALL insert_boleto_euromillon2m(@semana_id, 14, 15, 41, 46, 48, 03, 10);
CALL insert_boleto_euromillon2m(@semana_id, 14, 15, 33, 34, 39, 03, 11);
CALL insert_boleto_euromillon2m(@semana_id, 14, 15, 20, 22, 25, 03, 12);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 41, 46, 48, 04, 05);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 33, 34, 39, 04, 06);
CALL insert_boleto_euromillon2m(@semana_id, 13, 14, 20, 22, 25, 04, 07);
CALL insert_boleto_euromillon2m(@semana_id, 07, 13, 41, 46, 48, 04, 08);
CALL insert_boleto_euromillon2m(@semana_id, 07, 13, 33, 34, 39, 04, 09);
CALL insert_boleto_euromillon2m(@semana_id, 07, 13, 20, 22, 25, 04, 10);
CALL insert_boleto_euromillon2m(@semana_id, 05, 07, 41, 46, 48, 04, 11);
CALL insert_boleto_euromillon2m(@semana_id, 05, 07, 33, 34, 39, 04, 12);
CALL insert_boleto_euromillon2m(@semana_id, 05, 07, 20, 22, 25, 05, 06);
CALL insert_boleto_euromillon2m(@semana_id, 05, 07, 13, 14, 15, 05, 07);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 41, 46, 48, 05, 08);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 33, 34, 39, 05, 09);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 20, 22, 25, 05, 10);
CALL insert_boleto_euromillon2m(@semana_id, 04, 05, 13, 14, 15, 05, 11);
CALL insert_boleto_euromillon2m(@semana_id, 07, 15, 25, 39, 48, 05, 12);
CALL insert_boleto_euromillon2m(@semana_id, 05, 14, 22, 34, 48, 06, 07);
CALL insert_boleto_euromillon2m(@semana_id, 04, 13, 20, 34, 46, 06, 08);
CALL insert_boleto_euromillon2m(@semana_id, 07, 15, 25, 34, 46, 06, 09);
CALL insert_boleto_euromillon2m(@semana_id, 05, 14, 22, 33, 41, 06, 10);
CALL insert_boleto_euromillon2m(@semana_id, 04, 13, 20, 34, 46, 06, 11);
CALL insert_boleto_euromillon2m(@semana_id, 07, 15, 22, 25, 34, 06, 12);
CALL insert_boleto_euromillon2m(@semana_id, 05, 14, 20, 33, 41, 07, 08);
CALL insert_boleto_euromillon2m(@semana_id, 04, 13, 22, 34, 41, 07, 09);
CALL insert_boleto_euromillon2m(@semana_id, 04, 15, 20, 39, 41, 07, 10);
CALL insert_boleto_euromillon2m(@semana_id, 05, 15, 22, 39, 46, 07, 11);
CALL insert_boleto_euromillon2m(@semana_id, 07, 13, 25, 33, 48, 07, 12);
CALL insert_boleto_euromillon2m(@semana_id, 07, 14, 25, 34, 48, 08, 09);
CALL insert_boleto_euromillon2m(@semana_id, 05, 13, 22, 33, 46, 08, 10);
CALL insert_boleto_euromillon2m(@semana_id, 04, 14, 20, 34, 41, 08, 11);
CALL insert_boleto_euromillon2m(@semana_id, 07, 15, 25, 39, 48, 08, 12);
CALL insert_boleto_euromillon2m(@semana_id, 05, 14, 22, 34, 46, 09, 10);
CALL insert_boleto_euromillon2m(@semana_id, 04, 13, 20, 33, 41, 09, 11);
CALL insert_boleto_euromillon2m(@semana_id, 04, 14, 25, 39, 48, 09, 12);
CALL insert_boleto_euromillon2m(@semana_id, 14, 15, 22, 34, 41, 10, 11);
CALL insert_boleto_euromillon2m(@semana_id, 13, 22, 25, 41, 46, 10, 12);
CALL insert_boleto_euromillon2m(@semana_id, 14, 15, 34, 41, 48, 11, 12);
