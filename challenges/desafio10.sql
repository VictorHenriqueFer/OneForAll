 CREATE TABLE SpotifyClone.cancoes_favoritas(
     user_id INT NOT NULL,
     musica_id INT NOT NULL,
     CONSTRAINT PRIMARY KEY (user_id, musica_id),
     FOREIGN KEY (user_id) REFERENCES SpotifyClone.user(user_id),
     FOREIGN KEY (musica_id) REFERENCES SpotifyClone.musica(musica_id)
 ) engine = InnoDB;

   INSERT INTO SpotifyClone.cancoes_favoritas (user_id, musica_id)
   VALUES
   ('1', '10'),
   ('1', '4'),
   ('1', '8'),
   ('2', '2'),
   ('3', '1'),
   ('3', '10'),
   ('4', '5'),
   ('4', '2'),
   ('5', '8'),
   ('5', '9'),
   ('8', '2'),
   ('9', '5'),
   ('10', '10');
   