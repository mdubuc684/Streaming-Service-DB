-- Q1: What albums and artists are featured on this service? --
SELECT DISTINCT 
	al.albumTitle AS "Album",
	ar.artistName AS "Artist",
    g.genreName AS "Genre",
    al.releaseDate AS "Release"
FROM album al
	JOIN song s
		ON al.albumID = s.albumID
	JOIN artist ar
		ON s.artistID = ar.artistID
	JOIN genre g
		ON s.genreID = g.genreID
ORDER BY al.releaseDate;

-- Q2: What is currently the most played song? --
SELECT 
	s.songTitle AS "Song",
	a.artistName AS "Artist",
    COUNT(up.songID) as "Plays"
FROM artist a
	JOIN song s
		ON a.artistID = s.artistID
	JOIN  user_plays up
		ON s.songID = up.songID
GROUP BY s.songTitle, a.artistName
ORDER BY plays DESC
LIMIT 1;

-- Q3: Who are my most played artists? --
SELECT 
	u.username AS "Username",
	a.artistName AS "Artist",
    COUNT(up.songID) AS "Plays"
FROM user u
	JOIN user_plays up
		ON u.userID = up.userID
	JOIN song s
		ON up.songID = s.songID
	JOIN artist a
		ON s.artistID = a.artistID
WHERE u.username = "mdubuc684"
GROUP BY u.username, a.artistName
ORDER BY plays DESC;

-- Q4: What mutual followers do I share with Skye? --
DROP VIEW IF EXISTS mutual_followers;
CREATE VIEW mutual_followers AS
	SELECT 
		uf1.userID AS User_1,
        uf2.userID AS User_2,
        uf1.followerID AS Follower
	FROM user_followers uf1
		JOIN user_followers uf2
			ON uf1.userID != uf2.userID AND
			uf1.followerID = uf2.followerID;
SELECT 
	m.Follower AS "ID",
	u.username AS "Username"
FROM user u
	JOIN mutual_followers m
		ON u.userID = m.Follower
WHERE m.User_1 = 1 AND
	m.User_2 = 6;

-- Q5: Deleting a user --
DELETE FROM user
	WHERE username = "gene_belcher_421";

SELECT *
FROM user;
    
-- Q6: Updating a user's email --
UPDATE user
	SET userEmail = "danbrogan@aol.com"
WHERE username = "danbrogan7";

SELECT *
FROM user;

-- Q7: Adding a new album --
INSERT INTO Album
	VALUES (9, "Lonerism", "lonerism.png", DATE '2012/10/5');    
INSERT INTO Artist
	VALUES (9, "Tame Impala", 0.017, "", "", "kparker@gmail.com");
INSERT INTO Song
	VALUES (41, "Be Above It", "beaboveit.mp3", 202, 9, 9, 1, 6),
		   (42, "Endors Toi", "endorstoi.mp3", 187, 9, 9, 1, 6),
           (43, "Apocalypse Dreams", "apocalypsedreams.mp3", 357, 9, 9, 1, 6),
           (44, "Mind Mischief", "mindmischief.mp3", 272, 9, 9, 1, 6),
           (45, "Music to Walk Home By", "musictowalkhomeby.mp3", 312, 9, 9, 1, 6);
SELECT
	s.songTitle,
    al.albumTitle,
    ar.artistName
FROM song s
	JOIN album al
		ON s.albumID = al.albumID
	JOIN artist ar
		ON s.artistID = ar.artistID;