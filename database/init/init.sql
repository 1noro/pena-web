CREATE DATABASE IF NOT EXISTS penadb;
USE penadb;

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
