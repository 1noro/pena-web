USE penadb;

SET @semana_id = 202220;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 20, '2022-05-16', 11, 374.00);

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


CALL insert_boleto_euromillon2v(@semana_id, 13, 15, 22, 34, 48, 06, 07);


CALL insert_boleto_euromillon5v(@semana_id, 05, 15, 22, 33, 46, 08, 09, 10, 11, 12);
CALL insert_boleto_euromillon5v(@semana_id, 13, 25, 34, 43, 48, 01, 02, 03, 04, 05);


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


-- O GORDO ---------------------------------------------------------------------
CALL insert_boleto_gordo(@semana_id, 13, 15, 25, 34, 43, 48, 05);


-- LOTOTURF --------------------------------------------------------------------
CALL insert_boleto_lototurf6s(@semana_id, 04, 13, 14, 15, 22, 25, 04, 01);


-- LOTERIA NACINAL SABADO ------------------------------------------------------
CALL insert_boleto_lot_nac_sab(@semana_id, 61300);
CALL insert_boleto_lot_nac_sab(@semana_id, 61101);
CALL insert_boleto_lot_nac_sab(@semana_id, 96002);
CALL insert_boleto_lot_nac_sab(@semana_id, 78403);
CALL insert_boleto_lot_nac_sab(@semana_id, 51004);
CALL insert_boleto_lot_nac_sab(@semana_id, 18205);
CALL insert_boleto_lot_nac_sab(@semana_id, 87606);
CALL insert_boleto_lot_nac_sab(@semana_id, 63007);
CALL insert_boleto_lot_nac_sab(@semana_id, 02008);
CALL insert_boleto_lot_nac_sab(@semana_id, 90609);
CALL insert_boleto_lot_nac_sab(@semana_id, 69610);
CALL insert_boleto_lot_nac_sab(@semana_id, 66611);
CALL insert_boleto_lot_nac_sab(@semana_id, 52712);
CALL insert_boleto_lot_nac_sab(@semana_id, 78403);
CALL insert_boleto_lot_nac_sab(@semana_id, 69614);
CALL insert_boleto_lot_nac_sab(@semana_id, 76115);
CALL insert_boleto_lot_nac_sab(@semana_id, 85616);
CALL insert_boleto_lot_nac_sab(@semana_id, 75617);
CALL insert_boleto_lot_nac_sab(@semana_id, 94218);
CALL insert_boleto_lot_nac_sab(@semana_id, 69919);
CALL insert_boleto_lot_nac_sab(@semana_id, 69820);
CALL insert_boleto_lot_nac_sab(@semana_id, 07121);
CALL insert_boleto_lot_nac_sab(@semana_id, 88322);
CALL insert_boleto_lot_nac_sab(@semana_id, 90723);
CALL insert_boleto_lot_nac_sab(@semana_id, 49824);
CALL insert_boleto_lot_nac_sab(@semana_id, 08325);
CALL insert_boleto_lot_nac_sab(@semana_id, 30626);
CALL insert_boleto_lot_nac_sab(@semana_id, 37327);
CALL insert_boleto_lot_nac_sab(@semana_id, 68728);
CALL insert_boleto_lot_nac_sab(@semana_id, 51229);
CALL insert_boleto_lot_nac_sab(@semana_id, 15830);
CALL insert_boleto_lot_nac_sab(@semana_id, 69731);
CALL insert_boleto_lot_nac_sab(@semana_id, 01032);
CALL insert_boleto_lot_nac_sab(@semana_id, 41833);
CALL insert_boleto_lot_nac_sab(@semana_id, 87334);
CALL insert_boleto_lot_nac_sab(@semana_id, 63835);
CALL insert_boleto_lot_nac_sab(@semana_id, 69936);
CALL insert_boleto_lot_nac_sab(@semana_id, 05837);
CALL insert_boleto_lot_nac_sab(@semana_id, 33438);
CALL insert_boleto_lot_nac_sab(@semana_id, 56539);
CALL insert_boleto_lot_nac_sab(@semana_id, 02840);
CALL insert_boleto_lot_nac_sab(@semana_id, 05241);
CALL insert_boleto_lot_nac_sab(@semana_id, 64442);
CALL insert_boleto_lot_nac_sab(@semana_id, 20443);
CALL insert_boleto_lot_nac_sab(@semana_id, 85644);
CALL insert_boleto_lot_nac_sab(@semana_id, 69445);
CALL insert_boleto_lot_nac_sab(@semana_id, 11446);
CALL insert_boleto_lot_nac_sab(@semana_id, 69947);
CALL insert_boleto_lot_nac_sab(@semana_id, 69948);
CALL insert_boleto_lot_nac_sab(@semana_id, 14749);
CALL insert_boleto_lot_nac_sab(@semana_id, 18850);
CALL insert_boleto_lot_nac_sab(@semana_id, 06851);
CALL insert_boleto_lot_nac_sab(@semana_id, 01852);
CALL insert_boleto_lot_nac_sab(@semana_id, 02853);
CALL insert_boleto_lot_nac_sab(@semana_id, 07354);
CALL insert_boleto_lot_nac_sab(@semana_id, 46455);
CALL insert_boleto_lot_nac_sab(@semana_id, 16556);
CALL insert_boleto_lot_nac_sab(@semana_id, 45457);
CALL insert_boleto_lot_nac_sab(@semana_id, 63458);
CALL insert_boleto_lot_nac_sab(@semana_id, 05259);
CALL insert_boleto_lot_nac_sab(@semana_id, 13760);
CALL insert_boleto_lot_nac_sab(@semana_id, 13161);
CALL insert_boleto_lot_nac_sab(@semana_id, 13362);
CALL insert_boleto_lot_nac_sab(@semana_id, 45463);
CALL insert_boleto_lot_nac_sab(@semana_id, 49464);
CALL insert_boleto_lot_nac_sab(@semana_id, 58465);
CALL insert_boleto_lot_nac_sab(@semana_id, 83166);
CALL insert_boleto_lot_nac_sab(@semana_id, 73767);
CALL insert_boleto_lot_nac_sab(@semana_id, 15568);
CALL insert_boleto_lot_nac_sab(@semana_id, 91969);
CALL insert_boleto_lot_nac_sab(@semana_id, 17070);
CALL insert_boleto_lot_nac_sab(@semana_id, 36771);
CALL insert_boleto_lot_nac_sab(@semana_id, 69972);
CALL insert_boleto_lot_nac_sab(@semana_id, 51773);
CALL insert_boleto_lot_nac_sab(@semana_id, 69074);
CALL insert_boleto_lot_nac_sab(@semana_id, 75875);
CALL insert_boleto_lot_nac_sab(@semana_id, 91776);
CALL insert_boleto_lot_nac_sab(@semana_id, 00977);
CALL insert_boleto_lot_nac_sab(@semana_id, 83578);
CALL insert_boleto_lot_nac_sab(@semana_id, 69679);
CALL insert_boleto_lot_nac_sab(@semana_id, 47380);
CALL insert_boleto_lot_nac_sab(@semana_id, 05381);
CALL insert_boleto_lot_nac_sab(@semana_id, 24682);
CALL insert_boleto_lot_nac_sab(@semana_id, 78383);
CALL insert_boleto_lot_nac_sab(@semana_id, 45584);
CALL insert_boleto_lot_nac_sab(@semana_id, 53585);
CALL insert_boleto_lot_nac_sab(@semana_id, 16586);
CALL insert_boleto_lot_nac_sab(@semana_id, 04187);
CALL insert_boleto_lot_nac_sab(@semana_id, 11188);
CALL insert_boleto_lot_nac_sab(@semana_id, 48389);
CALL insert_boleto_lot_nac_sab(@semana_id, 27990);
CALL insert_boleto_lot_nac_sab(@semana_id, 48391);
CALL insert_boleto_lot_nac_sab(@semana_id, 17092);
CALL insert_boleto_lot_nac_sab(@semana_id, 94893);
CALL insert_boleto_lot_nac_sab(@semana_id, 06194);
CALL insert_boleto_lot_nac_sab(@semana_id, 01095);
CALL insert_boleto_lot_nac_sab(@semana_id, 85696);
CALL insert_boleto_lot_nac_sab(@semana_id, 00397);
CALL insert_boleto_lot_nac_sab(@semana_id, 54098);
CALL insert_boleto_lot_nac_sab(@semana_id, 36599);
