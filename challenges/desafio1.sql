DROP DATABASE IF EXISTS SpotifyClone;
 CREATE DATABASE IF NOT EXISTS SpotifyClone;
 CREATE TABLE SpotifyClone.planos(
     planos_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     tipo_planos VARCHAR(50) NOT NULL UNIQUE,
     valor_planos DECIMAL(5,2) NOT NULL
     ) engine = InnoDB;
 CREATE TABLE SpotifyClone.user(
     user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
     nome VARCHAR(45) NOT NULL UNIQUE,
     idade YEAR NOT NULL,
     data_assinatura DATE NOT NULL,
     planos_id INT NOT NULL,
     FOREIGN KEY (planos_id) REFERENCES planos(planos_id)
 ) engine = InnoDB;
 CREATE TABLE SpotifyClone.artista(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL UNIQUE
 ) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL UNIQUE,
    data_lancamento YEAR NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.musica(
    musica_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL UNIQUE,
    duracao INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.historico(
    user_id INT NOT NULL,
    musica_id INT NOT NULL ,
    data_execucao DATETIME NOT NULL,
	CONSTRAINT PRIMARY KEY (user_id, musica_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (musica_id) REFERENCES musica(musica_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo(
    user_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY (user_id, artista_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;
 INSERT INTO SpotifyClone.planos (planos_id, tipo_planos, valor_planos)
 VALUES
   ('1', 'gratuito', '0.00'),
   ('2', 'universitário', '5.99'),
   ('3', 'familiar', '7.99'),
   ('4', 'pessoal', '6.99');
 INSERT INTO SpotifyClone.user (user_id, nome, idade, data_assinatura, planos_id)
 VALUES
   ('1', 'Barbara Liskov', '82', '2019-01-01', '1'),
   ('2', 'Robert Cecil Martin', '58', '2019-01-01', '1'),
   ('3', 'Ada Lovelace', '37', '2019-01-01', '3'),
   ('4', 'Martin Fowler', '46', '2019-01-01', '3'),
   ('5', 'Sandi Metz', '58', '2018-04-29', '3'),
   ('6', 'Paulo Freire', '19', '2018-04-14', '2'),
   ('7', 'Bell Hooks', '26', '2018-01-14', '2'),
   ('8', 'Christopher Alexander', '85', '2019-06-05', '4'),
   ('9', 'Judith Butler', '45', '2020-05-13', '4'),
   ('10', 'Jorge Amado', '58', '2017-02-17', '4');
   
   INSERT INTO SpotifyClone.artista (artista_id, nome)
    VALUES
    ('1', 'Beyoncé'),
    ('2', 'Queen'),
    ('3', 'Elis Regina'),
    ('4', 'Baco Exu do Blues'),
    ('5', 'Blind Guardian'),
    ('6', 'Nina Simone');
    INSERT INTO SpotifyClone.album (album_id, nome, data_lancamento, artista_id)
    VALUES
    ('1', 'Renaissance', '2022', '1'),
    ('2', 'Jazz', '1978', '2'),
    ('3', 'Hot Space', '1982', '2'),
    ('4', 'Falso Brilhante', '1998', '3'),
    ('5', 'Vento de Maio', '2001', '3'),
    ('6', 'QVVJFA?', '2003', '4'),
    ('7', 'Somewhere Far Beyond', '2007', '5'),
    ('8', 'I Put A Spell On You', '2012', '6');
    INSERT INTO SpotifyClone.musica (musica_id, nome, duracao, album_id)
    VALUES
    ('1', 'BREAK MY SOUL', 279, '1'),
    ('2', 'Don`t Stop Me Now', 203, '2'),
    ('3', 'Under Pressure', 152, '3'),
    ('4', 'Como Nossos Pais', 105, '4'),
    ('5', 'O Medo de Amar é o Medo de Ser Livre', 207, '5'),
    ('6', 'Samba em Paris', 267 , '6'),
    ('7', 'The Bards Song', 244 , '7'),
    ('8', 'Feeling Good', 100 , '8'),
    ('9', 'VIRGOS GROOVE', 369, '1'),
    ('10', 'ALIEN SUPERSTAR', 116 , '1');
    INSERT INTO SpotifyClone.seguindo (user_id, artista_id)
    VALUES
    ('1', '1'),
    ('1', '2'),
    ('1', '3'),
    ('2', '1'),
    ('2', '3'),
    ('3', '2'),
    ('4', '4'),
    ('5', '5'),
    ('5', '6'),
    ('6', '1'),
    ('6', '6'),
    ('7', '6'),
    ('9', '3'),
    ('10', '2');

    INSERT INTO SpotifyClone.historico (user_id, musica_id, data_execucao)
    VALUES
    ('1', '6', '2022-02-28 10:45:55'),
    ('1', '9', '2020-05-02 05:30:35'),
    ('1', '8', '2020-03-06 11:22:33'),
    ('2', '8', '2022-08-05 08:05:17'),
    ('2', '5', '2020-01-02 07:40:33'),
    ('3', '8', '2020-11-13 16:55:13'),
    ('3', '9', '2020-12-05 18:38:30'),
    ('4', '6', '2021-08-15 17:10:10'),
    ('5', '6', '2022-01-09 01:44:33'),
    ('5', '3', '2020-08-06 15:23:43'),
    ('6', '5', '2017-01-24 00:31:17'),
    ('6', '1', '2017-10-12 12:35:20'),
    ('7', '2', '2011-12-15 22:30:49'),
    ('8', '2', '2012-03-17 14:56:41'),
    ('9', '7', '2022-02-24 21:14:22'),
    ('10', '10', '2015-12-13 08:30:22');