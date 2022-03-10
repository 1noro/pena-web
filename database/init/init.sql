CREATE DATABASE IF NOT EXISTS penadb CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE USER 'readonly'@'%' IDENTIFIED BY '12345678';
GRANT SELECT, SHOW VIEW ON penadb.* TO 'readonly'@'%';
FLUSH PRIVILEGES;

USE penadb;

-- Tables
CREATE TABLE IF NOT EXISTS sorteo (
    id INTEGER NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    dias CHAR(7) NOT NULL,
    precio FLOAT NOT NULL,
    CONSTRAINT sorteo_id PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS semana (
    id INTEGER NOT NULL,
    numero INTEGER NOT NULL,
    fecha_lunes DATE NOT NULL,
    CONSTRAINT semana_id PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tipo_numero (
    id INTEGER NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    CONSTRAINT tipo_numero_id PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS boleto (
    id INTEGER NOT NULL AUTO_INCREMENT,
    sorteo_id INTEGER NOT NULL,
    semana_id INTEGER NOT NULL,
    CONSTRAINT boleto_id PRIMARY KEY (id),
    CONSTRAINT boleto_sorteo_id FOREIGN KEY (sorteo_id) REFERENCES sorteo(id),
    CONSTRAINT boleto_semana_id FOREIGN KEY (semana_id) REFERENCES semana(id)
);

CREATE TABLE IF NOT EXISTS numero (
    id INTEGER NOT NULL AUTO_INCREMENT,
    numero INTEGER NOT NULL,
    boleto_id INTEGER NOT NULL,
    tipo_numero_id INTEGER NOT NULL,
    CONSTRAINT numero_id PRIMARY KEY (id),
    CONSTRAINT numero_boleto_id FOREIGN KEY (boleto_id) REFERENCES boleto(id),
    CONSTRAINT numero_tipo_numero_id FOREIGN KEY (tipo_numero_id) REFERENCES tipo_numero(id)
);


-- Datos iniciales
INSERT IGNORE INTO sorteo (id, nombre, dias, precio) VALUES
    (1, 'Lotaría Nacional (Sábado)', '0000010', 6.0),
    (2, 'Lotaría Nacional (Xoves)', '0001000', 3.0),
    (3, 'A Primitiva', '0001010', 56.0),
    (4, 'Bonoloto', '1111110', 21.0),
    (5, 'Euromillones', '0100100', 15.0),
    (6, 'O Gordo da Primitiva', '0000001', 9.0),
    (7, 'Lototurf', '0000001', 1.0);

INSERT IGNORE INTO tipo_numero (id, nombre) VALUES
    (1, 'Principal'),
    (2, 'Reintegro'),
    (3, 'Estrela'),
    (4, 'Cabalo');


-- Procedures
DELIMITER $$

    -- Inserts
    DROP PROCEDURE IF EXISTS insert_boleto_lot_nac_sab;$$
    CREATE PROCEDURE insert_boleto_lot_nac_sab(
        IN _semana_id INTEGER,
        IN _numero INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (1, _semana_id);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero, LAST_INSERT_ID(), 1);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_lot_nac_xov;$$
    CREATE PROCEDURE insert_boleto_lot_nac_xov(
        IN _semana_id INTEGER,
        IN _numero INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (2, _semana_id);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero, LAST_INSERT_ID(), 1);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_primitiva;$$
    CREATE PROCEDURE insert_boleto_primitiva(
        IN _semana_id INTEGER,
        IN _numero1 INTEGER,
        IN _numero2 INTEGER,
        IN _numero3 INTEGER,
        IN _numero4 INTEGER,
        IN _numero5 INTEGER,
        IN _numero6 INTEGER,
        IN _numero7 INTEGER,
        IN _numero8 INTEGER,
        IN _reintegro INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (3, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero6, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero7, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero8, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_reintegro, @boleto_id, 2);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_bonoloto;$$
    CREATE PROCEDURE insert_boleto_bonoloto(
        IN _semana_id INTEGER,
        IN _numero1 INTEGER,
        IN _numero2 INTEGER,
        IN _numero3 INTEGER,
        IN _numero4 INTEGER,
        IN _numero5 INTEGER,
        IN _numero6 INTEGER,
        IN _numero7 INTEGER,
        IN _reintegro INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (4, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero6, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero7, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_reintegro, @boleto_id, 2);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_euromillon;$$
    CREATE PROCEDURE insert_boleto_euromillon(
        IN _semana_id INTEGER,
        IN _numero1 INTEGER,
        IN _numero2 INTEGER,
        IN _numero3 INTEGER,
        IN _numero4 INTEGER,
        IN _numero5 INTEGER,
        IN _estrela1 INTEGER,
        IN _estrela2 INTEGER,
        IN _estrela3 INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (5, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_estrela1, @boleto_id, 3);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_estrela2, @boleto_id, 3);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_estrela3, @boleto_id, 3);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_gordo;$$
    CREATE PROCEDURE insert_boleto_gordo(
        IN _semana_id INTEGER,
        IN _numero1 INTEGER,
        IN _numero2 INTEGER,
        IN _numero3 INTEGER,
        IN _numero4 INTEGER,
        IN _numero5 INTEGER,
        IN _numero6 INTEGER,
        IN _reintegro INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (6, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero6, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_reintegro, @boleto_id, 2);
    END;$$

    DROP PROCEDURE IF EXISTS insert_boleto_lototurf;$$
    CREATE PROCEDURE insert_boleto_lototurf(
        IN _semana_id INTEGER,
        IN _numero1 INTEGER,
        IN _numero2 INTEGER,
        IN _numero3 INTEGER,
        IN _numero4 INTEGER,
        IN _numero5 INTEGER,
        IN _numero6 INTEGER,
        IN _reintegro INTEGER,
        IN _cabalo INTEGER
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (7, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero6, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_reintegro, @boleto_id, 2);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_cabalo, @boleto_id, 4);
    END;$$

    DROP VIEW IF EXISTS boleto_view;$$
    CREATE VIEW boleto_view AS SELECT
        boleto.sorteo_id AS sorteo_id,
        boleto.semana_id AS semana_id,
        group_concat('[', json_object(
            '$.numero', numero.numero,
            '$.tipo', tipo.nombre
        ), ']') AS numero
    FROM boleto boleto
    JOIN numero numero ON boleto.id = numero.boleto_id
    JOIN tipo_numero tipo ON numero.tipo_numero_id = tipo.id
    GROUP BY boleto.sorteo_id, boleto.semana_id;$$

    -- Selects
    DROP PROCEDURE IF EXISTS get_semana;$$
    CREATE PROCEDURE get_semana(
        IN _semana INTEGER
    ) BEGIN
        /*SELECT
            boleto.id AS boleto_id,
            boleto.sorteo_id AS sorteo_id,
            boleto.semana_id AS semana_id,
            concat('[', group_concat(json_object(
                'numero', numero.numero,
                'tipo', tipo.nombre
            )), ']') AS numero
        FROM (
            SELECT * FROM boleto WHERE semana_id = _semana
        ) boleto
        JOIN numero numero ON boleto.id = numero.boleto_id
        JOIN tipo_numero tipo ON numero.tipo_numero_id = tipo.id
        GROUP BY boleto.id, boleto.sorteo_id, boleto.semana_id;*/
        
        SELECT
            boleto.id AS boleto_id,
            boleto.sorteo_id AS sorteo_id,
            boleto.semana_id AS semana_id,
            concat('[', group_concat(json_object(
                'numero', numero.numero,
                'tipo', tipo.nombre
            )), ']') AS numero
        FROM boleto boleto
        JOIN numero numero ON
            -- boleto.semana_id = _semana &&
            boleto.id = numero.boleto_id
        JOIN tipo_numero tipo ON numero.tipo_numero_id = tipo.id
        WHERE boleto.semana_id = _semana
        GROUP BY boleto.id, boleto.sorteo_id, boleto.semana_id;
        
    END;$$

    DROP PROCEDURE IF EXISTS get_boletos_lot_nac_sab;$$
    CREATE PROCEDURE get_boletos_lot_nac_sab(IN _semana_id INTEGER) BEGIN
        SELECT n.numero
        FROM boleto AS b
        INNER JOIN numero AS n ON n.boleto_id = b.id
        WHERE b.sorteo_id = 1 AND b.semana_id = _semana_id;
    END;$$

    DROP PROCEDURE IF EXISTS get_boletos_lot_nac_xov;$$
    CREATE PROCEDURE get_boletos_lot_nac_xov(IN _semana_id INTEGER) BEGIN
        SELECT n.numero
        FROM boleto AS b
        INNER JOIN numero AS n ON n.boleto_id = b.id
        WHERE b.sorteo_id = 2 AND b.semana_id = _semana_id;
    END;$$

DELIMITER ;
