CREATE DATABASE record_company;
USE record_company;
CREATE TABLE albums(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR (255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (band_id) REFERENCES bands(id)
);

INSERT INTO bands (name)
VALUES('Iron Maiden');

INSERT INTO bands (name)
VALUES('deuce'), ('Avenged Sevenfold'), ('Ankor');

SELECT * FROM bands;
SELECT id AS 'ID', name AS 'Band Name' 
FROM bands;

 SELECT*FROM bands ORDER BY NAME;
 
 INSERT INTO albums (name, release_year, band_id)
 VALUES ('The Number of the Beasts', 1985, 1), 
 ('Power Slave', 1984, 1),
 ('Nightmare', 2018, 2),
 ('Nightmare', 2018, 3),
 ('Test Album', NULL, 3);
 
 SELECT * FROM bands;
 SELECT * FROM albums;
 
 SELECT release_year FROM albums;
 
 UPDATE ALBUMS
 SET release_year=1982
 WHERE id ='1'; 
 
 SELECT * FROM albums
 where release_year<2000;
 
 select*from albums
 where name like'%er%' OR band_id=2;
 
 SELECT*from albums
 Where release_year between 2000 and 2018;
 
 DELETE FROM albums WHERE id='5';
 
 SELECT*FROM ALBUMS;
 
 SELECT*FROM bands
 LEFT JOIN albums ON bands.id=albums.band_id;
 
 SELECT AVG(release_year) FROM albums;
 
 select band_id, COUNT(band_id) FROM albums 
 GROUP BY band_id;
 
 SELECT b.name AS band_name, COUNT(a.id)
 AS num_albums
 FROM bands AS b
 LEFT JOIN albums AS a ON b.id= a.band_id
 GROUP BY b.id
 HAVING num_albums=1;
 
 
 