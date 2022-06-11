USE penadb;

SET @semana_id = 202223;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 23, '2022-06-06', 11, 0.00);

-- BONOLOTO --------------------------------------------------------------------
CALL insert_boleto_bonoloto(@semana_id, 05, 13, 15, 25, 34, 43, 48, 04);

-- EUROMILLON ------------------------------------------------------------------
CALL insert_boleto_euromillon5m(@semana_id, 13, 25, 34, 43, 48, 01, 02, 03, 04, 05);
CALL insert_boleto_euromillon5m(@semana_id, 05, 15, 22, 33, 46, 08, 09, 10, 11, 12);


CALL insert_boleto_euromillon5v(@semana_id, 13, 25, 34, 43, 48, 01, 02, 03, 04, 05);
CALL insert_boleto_euromillon5v(@semana_id, 05, 15, 22, 33, 46, 08, 09, 10, 11, 12);


CALL insert_boleto_euromillon2m(@semana_id, 13, 15, 22, 34, 48, 06, 07);


CALL insert_boleto_euromillon2v(@semana_id, 13, 15, 22, 34, 48, 06, 07);


-- PRIMITIVA -------------------------------------------------------------------
CALL insert_boleto_primitiva7(@semana_id, 13, 15, 21, 25, 33, 43, 48, 00);
CALL insert_boleto_primitiva7(@semana_id, 05, 07, 13, 25, 33, 43, 48, 01);
CALL insert_boleto_primitiva7(@semana_id, 04, 13, 18, 25, 33, 34, 48, 02);
CALL insert_boleto_primitiva7(@semana_id, 13, 14, 21, 25, 26, 34, 48, 03);
CALL insert_boleto_primitiva7(@semana_id, 13, 14, 25, 30, 34, 40, 48, 04);
CALL insert_boleto_primitiva7(@semana_id, 04, 13, 22, 25, 33, 48, 49, 05);
CALL insert_boleto_primitiva7(@semana_id, 05, 13, 14, 15, 18, 25, 48, 06);
CALL insert_boleto_primitiva7(@semana_id, 04, 13, 22, 25, 30, 40, 48, 07);
CALL insert_boleto_primitiva7(@semana_id, 05, 13, 22, 25, 30, 43, 48, 08);
CALL insert_boleto_primitiva7(@semana_id, 07, 13, 15, 21, 25, 30, 48, 09);


CALL insert_boleto_primitiva7(@semana_id, 08, 11, 19, 28, 35, 37, 45, 00);
CALL insert_boleto_primitiva7(@semana_id, 11, 19, 26, 28, 35, 44, 45, 01);
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


-- O GORDO ---------------------------------------------------------------------
CALL insert_boleto_gordo(@semana_id, 13, 15, 25, 34, 43, 48, 05);


-- LOTOTURF --------------------------------------------------------------------
CALL insert_boleto_lototurf(@semana_id, 04, 13, 14, 15, 22, 25, 04, 01);


CALL insert_boleto_lototurf7(@semana_id, 07, 09, 10, 12, 14, 21, 26, 06, 04);


CALL insert_boleto_lototurf8(@semana_id, 04, 05, 13, 15, 18, 22, 25, 30, 00, 01);
CALL insert_boleto_lototurf8(@semana_id, 01, 02, 16, 17, 20, 24, 27, 31, 03, 02);
CALL insert_boleto_lototurf8(@semana_id, 03, 06, 08, 11, 19, 23, 28, 29, 03, 03);


CALL insert_boleto_lototurf9(@semana_id, 04, 05, 13, 14, 15, 22, 25, 30, 31, 09, 05);


-- LOTERIA NACINAL XOVES ------------------------------------------------------
CALL insert_boleto_lot_nac_xov(@semana_id, 61300);
CALL insert_boleto_lot_nac_xov(@semana_id, 61101);
CALL insert_boleto_lot_nac_xov(@semana_id, 96002);
CALL insert_boleto_lot_nac_xov(@semana_id, 97403);
CALL insert_boleto_lot_nac_xov(@semana_id, 51004);
CALL insert_boleto_lot_nac_xov(@semana_id, 13205);
CALL insert_boleto_lot_nac_xov(@semana_id, 87606);
CALL insert_boleto_lot_nac_xov(@semana_id, 63007);
CALL insert_boleto_lot_nac_xov(@semana_id, 02008);
CALL insert_boleto_lot_nac_xov(@semana_id, 90609);
CALL insert_boleto_lot_nac_xov(@semana_id, 69610);
CALL insert_boleto_lot_nac_xov(@semana_id, 66611);
CALL insert_boleto_lot_nac_xov(@semana_id, 52712);
CALL insert_boleto_lot_nac_xov(@semana_id, 97403);
CALL insert_boleto_lot_nac_xov(@semana_id, 69614);
CALL insert_boleto_lot_nac_xov(@semana_id, 86115);
CALL insert_boleto_lot_nac_xov(@semana_id, 85616);
CALL insert_boleto_lot_nac_xov(@semana_id, 69617);
CALL insert_boleto_lot_nac_xov(@semana_id, 94218);
CALL insert_boleto_lot_nac_xov(@semana_id, 69919);
CALL insert_boleto_lot_nac_xov(@semana_id, 51820);
CALL insert_boleto_lot_nac_xov(@semana_id, 07121);
CALL insert_boleto_lot_nac_xov(@semana_id, 88322);
CALL insert_boleto_lot_nac_xov(@semana_id, 90723);
CALL insert_boleto_lot_nac_xov(@semana_id, 49824);
CALL insert_boleto_lot_nac_xov(@semana_id, 69325);
CALL insert_boleto_lot_nac_xov(@semana_id, 30626);
CALL insert_boleto_lot_nac_xov(@semana_id, 37327);
CALL insert_boleto_lot_nac_xov(@semana_id, 68728);
CALL insert_boleto_lot_nac_xov(@semana_id, 51229);
CALL insert_boleto_lot_nac_xov(@semana_id, 15830);
CALL insert_boleto_lot_nac_xov(@semana_id, 69731);
CALL insert_boleto_lot_nac_xov(@semana_id, 01032);
CALL insert_boleto_lot_nac_xov(@semana_id, 41833);
CALL insert_boleto_lot_nac_xov(@semana_id, 87334);
CALL insert_boleto_lot_nac_xov(@semana_id, 13835);
CALL insert_boleto_lot_nac_xov(@semana_id, 85936);
CALL insert_boleto_lot_nac_xov(@semana_id, 05837);
CALL insert_boleto_lot_nac_xov(@semana_id, 69438);
CALL insert_boleto_lot_nac_xov(@semana_id, 56539);
CALL insert_boleto_lot_nac_xov(@semana_id, 02840);
CALL insert_boleto_lot_nac_xov(@semana_id, 05241);
CALL insert_boleto_lot_nac_xov(@semana_id, 64442);
CALL insert_boleto_lot_nac_xov(@semana_id, 20443);
CALL insert_boleto_lot_nac_xov(@semana_id, 85644);
CALL insert_boleto_lot_nac_xov(@semana_id, 69445);
CALL insert_boleto_lot_nac_xov(@semana_id, 11446);
CALL insert_boleto_lot_nac_xov(@semana_id, 69947);
CALL insert_boleto_lot_nac_xov(@semana_id, 37948);
CALL insert_boleto_lot_nac_xov(@semana_id, 14749);
CALL insert_boleto_lot_nac_xov(@semana_id, 18850);
CALL insert_boleto_lot_nac_xov(@semana_id, 06851);
CALL insert_boleto_lot_nac_xov(@semana_id, 01852);
CALL insert_boleto_lot_nac_xov(@semana_id, 02853);
CALL insert_boleto_lot_nac_xov(@semana_id, 07354);
CALL insert_boleto_lot_nac_xov(@semana_id, 46455);
CALL insert_boleto_lot_nac_xov(@semana_id, 69556);
CALL insert_boleto_lot_nac_xov(@semana_id, 45457);
CALL insert_boleto_lot_nac_xov(@semana_id, 63458);
CALL insert_boleto_lot_nac_xov(@semana_id, 05259);
CALL insert_boleto_lot_nac_xov(@semana_id, 13760);
CALL insert_boleto_lot_nac_xov(@semana_id, 68161);
CALL insert_boleto_lot_nac_xov(@semana_id, 95362);
CALL insert_boleto_lot_nac_xov(@semana_id, 45463);
CALL insert_boleto_lot_nac_xov(@semana_id, 49464);
CALL insert_boleto_lot_nac_xov(@semana_id, 69465);
CALL insert_boleto_lot_nac_xov(@semana_id, 83166);
CALL insert_boleto_lot_nac_xov(@semana_id, 73767);
CALL insert_boleto_lot_nac_xov(@semana_id, 15568);
CALL insert_boleto_lot_nac_xov(@semana_id, 56969);
CALL insert_boleto_lot_nac_xov(@semana_id, 17070);
CALL insert_boleto_lot_nac_xov(@semana_id, 36771);
CALL insert_boleto_lot_nac_xov(@semana_id, 69972);
CALL insert_boleto_lot_nac_xov(@semana_id, 51773);
CALL insert_boleto_lot_nac_xov(@semana_id, 13074);
CALL insert_boleto_lot_nac_xov(@semana_id, 75875);
CALL insert_boleto_lot_nac_xov(@semana_id, 91776);
CALL insert_boleto_lot_nac_xov(@semana_id, 00977);
CALL insert_boleto_lot_nac_xov(@semana_id, 83578);
CALL insert_boleto_lot_nac_xov(@semana_id, 96679);
CALL insert_boleto_lot_nac_xov(@semana_id, 69380);
CALL insert_boleto_lot_nac_xov(@semana_id, 05381);
CALL insert_boleto_lot_nac_xov(@semana_id, 24682);
CALL insert_boleto_lot_nac_xov(@semana_id, 78383);
CALL insert_boleto_lot_nac_xov(@semana_id, 25584);
CALL insert_boleto_lot_nac_xov(@semana_id, 53585);
CALL insert_boleto_lot_nac_xov(@semana_id, 69586);
CALL insert_boleto_lot_nac_xov(@semana_id, 69187);
CALL insert_boleto_lot_nac_xov(@semana_id, 11188);
CALL insert_boleto_lot_nac_xov(@semana_id, 69389);
CALL insert_boleto_lot_nac_xov(@semana_id, 27990);
CALL insert_boleto_lot_nac_xov(@semana_id, 35391);
CALL insert_boleto_lot_nac_xov(@semana_id, 00092);
CALL insert_boleto_lot_nac_xov(@semana_id, 94893);
CALL insert_boleto_lot_nac_xov(@semana_id, 06194);
CALL insert_boleto_lot_nac_xov(@semana_id, 01095);
CALL insert_boleto_lot_nac_xov(@semana_id, 85696);
CALL insert_boleto_lot_nac_xov(@semana_id, 00397);
CALL insert_boleto_lot_nac_xov(@semana_id, 54098);
CALL insert_boleto_lot_nac_xov(@semana_id, 36599);
