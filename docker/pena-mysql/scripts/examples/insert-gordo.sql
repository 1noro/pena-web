USE penadb;

SET @semana_id = 202210;

-- TODO rename: reintegro -> numero clave
CALL insert_boleto_gordo(@semana_id, 13, 15, 25, 34, 43, 48, 05);
