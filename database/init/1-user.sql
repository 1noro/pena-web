USE penadb;

-- User
CREATE USER 'readonly'@'%' IDENTIFIED BY '12345678';
GRANT SELECT, SHOW VIEW ON penadb.* TO 'readonly'@'%';
GRANT EXECUTE ON PROCEDURE get_semana TO 'readonly'@'%';
GRANT EXECUTE ON PROCEDURE get_total_semana TO 'readonly'@'%';
FLUSH PRIVILEGES;
