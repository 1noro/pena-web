USE penadb;

SET @semana_id = 202210;

INSERT INTO semana (id, numero, fecha_lunes, participantes, total_ganado)
    VALUES (@semana_id, 10, '2022-03-07', 10, 596.50);


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


CALL insert_boleto_lot_nac_xov(@semana_id, 61300);
CALL insert_boleto_lot_nac_xov(@semana_id, 23101);
CALL insert_boleto_lot_nac_xov(@semana_id, 82702);
CALL insert_boleto_lot_nac_xov(@semana_id, 78403);
CALL insert_boleto_lot_nac_xov(@semana_id, 21804);
CALL insert_boleto_lot_nac_xov(@semana_id, 88205);
CALL insert_boleto_lot_nac_xov(@semana_id, 87606);
CALL insert_boleto_lot_nac_xov(@semana_id, 41007);
CALL insert_boleto_lot_nac_xov(@semana_id, 02008);
CALL insert_boleto_lot_nac_xov(@semana_id, 90609);
CALL insert_boleto_lot_nac_xov(@semana_id, 72610);
CALL insert_boleto_lot_nac_xov(@semana_id, 66611);
CALL insert_boleto_lot_nac_xov(@semana_id, 82512);
CALL insert_boleto_lot_nac_xov(@semana_id, 78403);
CALL insert_boleto_lot_nac_xov(@semana_id, 32614);
CALL insert_boleto_lot_nac_xov(@semana_id, 86115);
CALL insert_boleto_lot_nac_xov(@semana_id, 85616);
CALL insert_boleto_lot_nac_xov(@semana_id, 75617);
CALL insert_boleto_lot_nac_xov(@semana_id, 94218);
CALL insert_boleto_lot_nac_xov(@semana_id, 22919);
CALL insert_boleto_lot_nac_xov(@semana_id, 70820);
CALL insert_boleto_lot_nac_xov(@semana_id, 07121);
CALL insert_boleto_lot_nac_xov(@semana_id, 88322);
CALL insert_boleto_lot_nac_xov(@semana_id, 90723);
CALL insert_boleto_lot_nac_xov(@semana_id, 49824);
CALL insert_boleto_lot_nac_xov(@semana_id, 87325);
CALL insert_boleto_lot_nac_xov(@semana_id, 30626);
CALL insert_boleto_lot_nac_xov(@semana_id, 37327);
CALL insert_boleto_lot_nac_xov(@semana_id, 68728);
CALL insert_boleto_lot_nac_xov(@semana_id, 77129);
CALL insert_boleto_lot_nac_xov(@semana_id, 62430);
CALL insert_boleto_lot_nac_xov(@semana_id, 75731);
CALL insert_boleto_lot_nac_xov(@semana_id, 01032);
CALL insert_boleto_lot_nac_xov(@semana_id, 41833);
CALL insert_boleto_lot_nac_xov(@semana_id, 87334);
CALL insert_boleto_lot_nac_xov(@semana_id, 16835);
CALL insert_boleto_lot_nac_xov(@semana_id, 85936);
CALL insert_boleto_lot_nac_xov(@semana_id, 05837);
CALL insert_boleto_lot_nac_xov(@semana_id, 33438);
CALL insert_boleto_lot_nac_xov(@semana_id, 66539);
CALL insert_boleto_lot_nac_xov(@semana_id, 02840);
CALL insert_boleto_lot_nac_xov(@semana_id, 05241);
CALL insert_boleto_lot_nac_xov(@semana_id, 88542);
CALL insert_boleto_lot_nac_xov(@semana_id, 20443);
CALL insert_boleto_lot_nac_xov(@semana_id, 85644);
CALL insert_boleto_lot_nac_xov(@semana_id, 80645);
CALL insert_boleto_lot_nac_xov(@semana_id, 11446);
CALL insert_boleto_lot_nac_xov(@semana_id, 76547);
CALL insert_boleto_lot_nac_xov(@semana_id, 37948);
CALL insert_boleto_lot_nac_xov(@semana_id, 14749);
CALL insert_boleto_lot_nac_xov(@semana_id, 18850);
CALL insert_boleto_lot_nac_xov(@semana_id, 66251);
CALL insert_boleto_lot_nac_xov(@semana_id, 01852);
CALL insert_boleto_lot_nac_xov(@semana_id, 02853);
CALL insert_boleto_lot_nac_xov(@semana_id, 07354);
CALL insert_boleto_lot_nac_xov(@semana_id, 46455);
CALL insert_boleto_lot_nac_xov(@semana_id, 11056);
CALL insert_boleto_lot_nac_xov(@semana_id, 45457);
CALL insert_boleto_lot_nac_xov(@semana_id, 63458);
CALL insert_boleto_lot_nac_xov(@semana_id, 05259);
CALL insert_boleto_lot_nac_xov(@semana_id, 87760);
CALL insert_boleto_lot_nac_xov(@semana_id, 68161);
CALL insert_boleto_lot_nac_xov(@semana_id, 12362);
CALL insert_boleto_lot_nac_xov(@semana_id, 45463);
CALL insert_boleto_lot_nac_xov(@semana_id, 77164);
CALL insert_boleto_lot_nac_xov(@semana_id, 71465);
CALL insert_boleto_lot_nac_xov(@semana_id, 83166);
CALL insert_boleto_lot_nac_xov(@semana_id, 73767);
CALL insert_boleto_lot_nac_xov(@semana_id, 15568);
CALL insert_boleto_lot_nac_xov(@semana_id, 03769);
CALL insert_boleto_lot_nac_xov(@semana_id, 17070);
CALL insert_boleto_lot_nac_xov(@semana_id, 36771);
CALL insert_boleto_lot_nac_xov(@semana_id, 66972);
CALL insert_boleto_lot_nac_xov(@semana_id, 51773);
CALL insert_boleto_lot_nac_xov(@semana_id, 12074);
CALL insert_boleto_lot_nac_xov(@semana_id, 75875);
CALL insert_boleto_lot_nac_xov(@semana_id, 80176);
CALL insert_boleto_lot_nac_xov(@semana_id, 69477);
CALL insert_boleto_lot_nac_xov(@semana_id, 83578);
CALL insert_boleto_lot_nac_xov(@semana_id, 69679);
CALL insert_boleto_lot_nac_xov(@semana_id, 47380);
CALL insert_boleto_lot_nac_xov(@semana_id, 05381);
CALL insert_boleto_lot_nac_xov(@semana_id, 24682);
CALL insert_boleto_lot_nac_xov(@semana_id, 78383);
CALL insert_boleto_lot_nac_xov(@semana_id, 25584);
CALL insert_boleto_lot_nac_xov(@semana_id, 12285);
CALL insert_boleto_lot_nac_xov(@semana_id, 55286);
CALL insert_boleto_lot_nac_xov(@semana_id, 04187);
CALL insert_boleto_lot_nac_xov(@semana_id, 11188);
CALL insert_boleto_lot_nac_xov(@semana_id, 15389);
CALL insert_boleto_lot_nac_xov(@semana_id, 42590);
CALL insert_boleto_lot_nac_xov(@semana_id, 01591);
CALL insert_boleto_lot_nac_xov(@semana_id, 78192);
CALL insert_boleto_lot_nac_xov(@semana_id, 73193);
CALL insert_boleto_lot_nac_xov(@semana_id, 06194);
CALL insert_boleto_lot_nac_xov(@semana_id, 01095);
CALL insert_boleto_lot_nac_xov(@semana_id, 57496);
CALL insert_boleto_lot_nac_xov(@semana_id, 00397);
CALL insert_boleto_lot_nac_xov(@semana_id, 54098);
CALL insert_boleto_lot_nac_xov(@semana_id, 36599);


CALL insert_boleto_lot_nac_sab(@semana_id, 61300);
CALL insert_boleto_lot_nac_sab(@semana_id, 23101);
CALL insert_boleto_lot_nac_sab(@semana_id, 82702);
CALL insert_boleto_lot_nac_sab(@semana_id, 78403);
CALL insert_boleto_lot_nac_sab(@semana_id, 21804);
CALL insert_boleto_lot_nac_sab(@semana_id, 88205);
CALL insert_boleto_lot_nac_sab(@semana_id, 87606);
CALL insert_boleto_lot_nac_sab(@semana_id, 41007);
CALL insert_boleto_lot_nac_sab(@semana_id, 02008);
CALL insert_boleto_lot_nac_sab(@semana_id, 90609);
CALL insert_boleto_lot_nac_sab(@semana_id, 72610);
CALL insert_boleto_lot_nac_sab(@semana_id, 66611);
CALL insert_boleto_lot_nac_sab(@semana_id, 82512);
CALL insert_boleto_lot_nac_sab(@semana_id, 78403);
CALL insert_boleto_lot_nac_sab(@semana_id, 32614);
CALL insert_boleto_lot_nac_sab(@semana_id, 86115);
CALL insert_boleto_lot_nac_sab(@semana_id, 85616);
CALL insert_boleto_lot_nac_sab(@semana_id, 75617);
CALL insert_boleto_lot_nac_sab(@semana_id, 94218);
CALL insert_boleto_lot_nac_sab(@semana_id, 22919);
CALL insert_boleto_lot_nac_sab(@semana_id, 70820);
CALL insert_boleto_lot_nac_sab(@semana_id, 07121);
CALL insert_boleto_lot_nac_sab(@semana_id, 88322);
CALL insert_boleto_lot_nac_sab(@semana_id, 90723);
CALL insert_boleto_lot_nac_sab(@semana_id, 49824);
CALL insert_boleto_lot_nac_sab(@semana_id, 87325);
CALL insert_boleto_lot_nac_sab(@semana_id, 30626);
CALL insert_boleto_lot_nac_sab(@semana_id, 37327);
CALL insert_boleto_lot_nac_sab(@semana_id, 68728);
CALL insert_boleto_lot_nac_sab(@semana_id, 77129);
CALL insert_boleto_lot_nac_sab(@semana_id, 62430);
CALL insert_boleto_lot_nac_sab(@semana_id, 75731);
CALL insert_boleto_lot_nac_sab(@semana_id, 01032);
CALL insert_boleto_lot_nac_sab(@semana_id, 41833);
CALL insert_boleto_lot_nac_sab(@semana_id, 87334);
CALL insert_boleto_lot_nac_sab(@semana_id, 16835);
CALL insert_boleto_lot_nac_sab(@semana_id, 85936);
CALL insert_boleto_lot_nac_sab(@semana_id, 05837);
CALL insert_boleto_lot_nac_sab(@semana_id, 33438);
CALL insert_boleto_lot_nac_sab(@semana_id, 66539);
CALL insert_boleto_lot_nac_sab(@semana_id, 02840);
CALL insert_boleto_lot_nac_sab(@semana_id, 05241);
CALL insert_boleto_lot_nac_sab(@semana_id, 88542);
CALL insert_boleto_lot_nac_sab(@semana_id, 20443);
CALL insert_boleto_lot_nac_sab(@semana_id, 85644);
CALL insert_boleto_lot_nac_sab(@semana_id, 80645);
CALL insert_boleto_lot_nac_sab(@semana_id, 11446);
CALL insert_boleto_lot_nac_sab(@semana_id, 76547);
CALL insert_boleto_lot_nac_sab(@semana_id, 37948);
CALL insert_boleto_lot_nac_sab(@semana_id, 14749);
CALL insert_boleto_lot_nac_sab(@semana_id, 18850);
CALL insert_boleto_lot_nac_sab(@semana_id, 66251);
CALL insert_boleto_lot_nac_sab(@semana_id, 01852);
CALL insert_boleto_lot_nac_sab(@semana_id, 02853);
CALL insert_boleto_lot_nac_sab(@semana_id, 07354);
CALL insert_boleto_lot_nac_sab(@semana_id, 46455);
CALL insert_boleto_lot_nac_sab(@semana_id, 11056);
CALL insert_boleto_lot_nac_sab(@semana_id, 45457);
CALL insert_boleto_lot_nac_sab(@semana_id, 63458);
CALL insert_boleto_lot_nac_sab(@semana_id, 05259);
CALL insert_boleto_lot_nac_sab(@semana_id, 87760);
CALL insert_boleto_lot_nac_sab(@semana_id, 68161);
CALL insert_boleto_lot_nac_sab(@semana_id, 12362);
CALL insert_boleto_lot_nac_sab(@semana_id, 45463);
CALL insert_boleto_lot_nac_sab(@semana_id, 77164);
CALL insert_boleto_lot_nac_sab(@semana_id, 71465);
CALL insert_boleto_lot_nac_sab(@semana_id, 83166);
CALL insert_boleto_lot_nac_sab(@semana_id, 73767);
CALL insert_boleto_lot_nac_sab(@semana_id, 15568);
CALL insert_boleto_lot_nac_sab(@semana_id, 03769);
CALL insert_boleto_lot_nac_sab(@semana_id, 17070);
CALL insert_boleto_lot_nac_sab(@semana_id, 36771);
CALL insert_boleto_lot_nac_sab(@semana_id, 66972);
CALL insert_boleto_lot_nac_sab(@semana_id, 51773);
CALL insert_boleto_lot_nac_sab(@semana_id, 12074);
CALL insert_boleto_lot_nac_sab(@semana_id, 75875);
CALL insert_boleto_lot_nac_sab(@semana_id, 80176);
CALL insert_boleto_lot_nac_sab(@semana_id, 69477);
CALL insert_boleto_lot_nac_sab(@semana_id, 83578);
CALL insert_boleto_lot_nac_sab(@semana_id, 69679);
CALL insert_boleto_lot_nac_sab(@semana_id, 47380);
CALL insert_boleto_lot_nac_sab(@semana_id, 05381);
CALL insert_boleto_lot_nac_sab(@semana_id, 24682);
CALL insert_boleto_lot_nac_sab(@semana_id, 78383);
CALL insert_boleto_lot_nac_sab(@semana_id, 25584);
CALL insert_boleto_lot_nac_sab(@semana_id, 12285);
CALL insert_boleto_lot_nac_sab(@semana_id, 55286);
CALL insert_boleto_lot_nac_sab(@semana_id, 04187);
CALL insert_boleto_lot_nac_sab(@semana_id, 11188);
CALL insert_boleto_lot_nac_sab(@semana_id, 15389);
CALL insert_boleto_lot_nac_sab(@semana_id, 42590);
CALL insert_boleto_lot_nac_sab(@semana_id, 01591);
CALL insert_boleto_lot_nac_sab(@semana_id, 78192);
CALL insert_boleto_lot_nac_sab(@semana_id, 73193);
CALL insert_boleto_lot_nac_sab(@semana_id, 06194);
CALL insert_boleto_lot_nac_sab(@semana_id, 01095);
CALL insert_boleto_lot_nac_sab(@semana_id, 57496);
CALL insert_boleto_lot_nac_sab(@semana_id, 00397);
CALL insert_boleto_lot_nac_sab(@semana_id, 54098);
CALL insert_boleto_lot_nac_sab(@semana_id, 36599);
