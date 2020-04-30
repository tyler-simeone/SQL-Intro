SELECT * FROM Artist;

INSERT INTO Artist
(ArtistName, YearEstablished)
VALUES ('Eric Clapton', '1962');

SELECT * FROM Album;

INSERT INTO Album
(Title, ReleaseDate, AlbumLength, Label, ArtistId)
VALUES ('Journeyman', '11/07/1989', '1000', 'Skyline Studios', '28');

SELECT * FROM Song;

INSERT INTO Song
(Title, SongLength, ReleaseDate, ArtistId, AlbumId)
VALUES ('Hard Times', '300', '11/07/1989', '28', '26');

SELECT al.Title, s.Title, ar.ArtistName
FROM Album as al
LEFT JOIN Song as s ON s.AlbumId = al.AlbumId
LEFT JOIN Artist ar ON s.ArtistId = ar.ArtistId
WHERE ar.ArtistName = 'Eric Clapton';

-- 6. FROM HERE DOWN WAS COPIED FROM LECTURE
SELECT a.Title, COUNT(s.SongId) AS 'Song Count'
FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.AlbumId
GROUP BY s.AlbumId;

-- 7.
SELECT ar.ArtistName, s.Title
FROM Song s 
LEFT JOIN Artist ar ON s.ArtistId = ar.ArtistId
GROUP BY s.ArtistId;

-- 8.
SELECT g.Label, COUNT(s.SongId) AS 'Song Count'
FROM Song s 
LEFT JOIN Genre g ON s.GenreId = g.GenreId
GROUP BY s.GenreId;

-- 9.
SELECT Title, MAX(AlbumLength)
From Album;

-- 10.
SELECT Title, MAX(SongLength)
FROM Song;

-- 11. 
SELECT a.Title AS "Album Title", s.Title "Song Title", MAX(s.SongLength)
FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

DROP TABLE "untitled_table_6";