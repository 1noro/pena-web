CREATE DATABASE IF NOT EXISTS penadb;
USE penadb;


-- Tables
CREATE TABLE IF NOT EXISTS sorteo (
    id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    dias CHAR(7) NOT NULL,
    precio FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS semana (
    id INT NOT NULL,
    numero int NOT NULL,
    fecha_lunes DATE NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS tipo_numero (
    id INT NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS boleto (
    id INT NOT NULL AUTO_INCREMENT,
    sorteo_id INT NOT NULL,
    semana_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (sorteo_id) REFERENCES sorteo(id),
    FOREIGN KEY (semana_id) REFERENCES semana(id)
);

CREATE TABLE IF NOT EXISTS numero (
    id INT NOT NULL AUTO_INCREMENT,
    numero INT NOT NULL,
    boleto_id INT NOT NULL,
    tipo_numero_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (boleto_id) REFERENCES boleto(id),
    FOREIGN KEY (tipo_numero_id) REFERENCES tipo_numero(id)
);


-- Procedures
DELIMITER $$

    CREATE PROCEDURE insert_boleto_lot_nac_sab(
        IN _semana_id INT,
        IN _numero INT
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (1, _semana_id);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero, LAST_INSERT_ID(), 1);
    END;$$

    CREATE PROCEDURE insert_boleto_lot_nac_xob(
        IN _semana_id INT,
        IN _numero INT
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (2, _semana_id);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero, LAST_INSERT_ID(), 1);
    END;$$

    CREATE PROCEDURE insert_boleto_primitiva(
        IN _semana_id INT,
        IN _numero1 INT,
        IN _numero2 INT,
        IN _numero3 INT,
        IN _numero4 INT,
        IN _numero5 INT,
        IN _numero6 INT,
        IN _reintegro INT
    ) BEGIN
        INSERT INTO boleto (sorteo_id, semana_id) VALUES (3, _semana_id);
        SET @boleto_id = LAST_INSERT_ID();
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero1, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero2, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero3, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero4, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero5, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_numero6, @boleto_id, 1);
        INSERT INTO numero (numero, boleto_id, tipo_numero_id) VALUES (_reintegro, @boleto_id, 2);
    END;$$

DELIMITER ;


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
    (3, 'Estrela');
