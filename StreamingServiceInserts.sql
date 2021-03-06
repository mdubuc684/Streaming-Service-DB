-- Artist --
INSERT INTO Artist
	VALUES (1, "The Smiths", 0.012, "", "", "johnnymarr@gmail.com"),
		   (2, "My Chemical Romance", 0.014, "", "", "gerardway@aol.com"),
           (3, "Kacey Musgraves", 0.017, "", "5555162289", ""),
           (4, "Tyler, the Creator", 0.019, "", "5558764356", "igor@hotmail.com"),
           (5, "Joy Division", 0.011, "", "", "iancurtis56@cox.net"),
           (6, "John Coltrane", 0.012, "", "5552105578", "jcoltranesson@hotmail.com"),
           (7, "Charli XCX", 0.017, "", "", "charlixcx@gmail.com"),
           (8, "Animal Collective", 0.011, "", "555694201", "");

-- Album --
INSERT INTO Album
	VALUES (1, "The Queen is Dead", "thequeenisdead.png", DATE '1986/06/16'),
		   (2, "Three Cheers for Sweet Revenge", "threecheers.png", DATE '2004/06/08'),
           (3, "Golden Hour", "goldenhour.png", DATE '2018/03/30'),
           (4, "Flower Boy", "flowerboy.png", DATE '2017/07/21'),
           (5, "Unknown Pleasures", "unknownpleasures.png", DATE '1979/06/15'),
           (6, "Giant Steps", "giantsteps.png", DATE '1960/02/01'),
           (7, "Charli", "charli.png", DATE '2019/09/13'),
           (8, "Strawberry Jam", "strawberryjam.png", DATE '2007/09/10');

-- Genre --
INSERT INTO Genre
	VALUES (1, "Rock"),
		   (2, "Emo"),
		   (3, "Country"),
           (4, "Hip-hop"),
           (5, "Punk"),
           (6, "Jazz"),
           (7, "Pop"),
           (8, "Experimental");

-- Label --
INSERT INTO Label
	VALUES (1, "Rough Trade", 0.015, "5554567891", "jsmith@roughtrade.com"),
		   (2, "Reprise", 0.015, "5557771030", "rtoro@reprise.com"),
           (3, "MCA Nashville", 0.015, "", "tking@mcanashville.com"),
           (4, "Columbia", 0.015, "5553210674", "pparker@columbia.com"),
           (5, "Factory", 0.015, "5555014432", "rwilliams@factory.com"),
           (6, "Atlantic", 0.015, "5554891254", "jarruda@atlantic.com"),
           (7, "Asylum", 0.015, "", "cwheezer@asylum.com"),
           (8, "Domino", 0.015, "5556412033", "hhill@domino.com");

-- Song --
INSERT INTO Song
	VALUES (1, "The Queen is Dead", "thequeenisdead.mp3", 387, 1, 1, 1, 1),
		   (2, "Frankly, Mr. Shankly", "franklymrshankly.mp3", 139, 1, 1, 1, 1),
           (3, "I Know It's Over", "iknowitsover.mp3", 349, 1, 1, 1, 1),
           (4, "Never Had No One Ever", "neverhadnooneever.mp3", 218, 1, 1, 1, 1),
           (5, "Cemetry Gates", "cemetrygates.mp3", 161, 1, 1, 1, 1),
           (6, "Helena", "helena.mp3", 205, 2, 2, 2, 2),
           (7, "Give 'Em Hell, Kid", "giveemhellkid.mp3", 139, 2, 2, 2, 2),
           (8, "To The End", "totheend.mp3", 181, 2, 2, 2, 2),
           (9, "You Know What They Do To Guys Like Us in Prison", "youknowwhat.mp3", 174, 2, 2, 2, 2),
           (10, "I'm Not Okay (I Promise)", "imnotokayipromise.mp3", 186, 2, 2, 2, 2),
           (11, "Slow Burn", "slowburn.mp3", 246, 3, 3, 3, 3),
           (12, "Lonely Weekend", "lonelyweekend.mp3", 227, 3, 3, 3, 3),
           (13, "Butterflies", "butterflies.mp3", 229, 3, 3, 3, 3),
           (14, "Oh, What a World", "ohwhataworld.mp3", 241, 3, 3, 3, 3),
           (15, "Mother", "mother.mp3", 78, 3, 3, 3, 3),
           (16, "Foreword", "foreword.mp3", 194, 4, 4, 4, 4),
           (17, "Where This Flower Blooms", "wherethisflowerblooms.mp3", 195, 4, 4, 4, 4),
           (18, "See You Again", "sometimes.mp3", 180, 4, 4, 4, 4),
           (19, "Who Dat Boy", "whodatboy.mp3", 205, 4, 4, 4, 4),
           (20, "Pothole", "pothole.mp3", 237, 4, 4, 4, 4),
           (21, "Disorder", "disorder.mp3", 209, 5, 5, 5, 5),
           (22, "Day of the Lords", "dayofthelords.mp3", 288, 5, 5, 5, 5),
           (23, "Candidate", "candidate.mp3", 188, 5, 5, 5, 5),
           (24, "Insight", "insight.mp3", 266, 5, 5, 5, 5),
           (25, "New Dawn Fades", "newdawnfades.mp3", 282, 5, 5, 5, 5),
           (26, "Giant Steps", "giantsteps.mp3", 283, 6, 6, 6, 6),
           (27, "Cousin Mary", "cousinmary.mp3", 710, 6, 6, 6, 6),
           (28, "Countdown", "countdown.mp3", 145, 6, 6, 6, 6),
           (29, "Spiral", "spiral.mp3", 363, 6, 6, 6, 6),
           (30, "Syeeda's Song Flute", "syeedassongflute.mp3", 426, 6, 6, 6, 6),
           (31, "Next Level Charli", "nextlevelcharli.mp3", 158, 7, 7, 7, 7),
           (32, "Gone", "gone.mp3", 246, 7, 7, 7, 7),
           (33, "Cross You Out", "crossyouout.mp3", 208, 7, 7, 7, 7),
           (34, "1999", "1999.mp3", 189, 7, 7, 7, 7),
           (35, "Click", "click.mp3", 233, 7, 7, 7, 7),
           (36, "Peacebone", "peacebone.mp3", 313, 8, 8, 8, 8),
           (37, "Unsolved Mysteries", "unsolvedmysteries.mp3", 265, 8, 8, 8, 8),
           (38, "Chores", "chores.mp3", 270, 8, 8, 8, 8),
           (39, "For Reverend Green", "forreverendgreen.mp3", 395, 8, 8, 8, 8),
           (40, "Fireworks", "fireworks.mp3", 411, 8, 8, 8, 8);
           
-- User --
INSERT INTO User
	VALUES (1, "mdubuc684", "misha_selfie.png", "Misha", "Dubuc", "1998-09-26", "2015-10-11", "", "mdubuc684@g.rwu.edu"),
           (2, "rundownmike10", "default.jpg", "Mike", "Contente", "1998-08-05", "2017-06-11", "", "mcontente@g.rwu.edu"),
           (3, "mhlawless", "maxavatar.jpg", "Max", "Lawless", "1998-11-27", "2013-01-05", "5554326767", "mlawless@g.rwu.edu"),
           (4, "danbrogan7", "dancollege.png", "Dan", "Brogan", "1998-05-30", "2018-04-22", "5553665432", "danbrogan@uri.edu"),
           (5, "noah_seitz.64", "noahprov.png", "Noah", "Seitz", "1998-05-06", "2015-10-04", "", "nseitz@wne.edu"),
           (6, "skyenygaard", "skyeboston.png", "Skye", "Nygaard", "1999-01-14", "2016-07-11", "", "snygaard@neu.edu"),
           (7, "smoothtwist", "joshselfie2.jpg", "Josh", "Arruda", "1997-04-15", "2019-02-02", "5558436781", ""),
           (8, "adrian_ridolfi", "adrian.png", "Adrian", "Ridolfi", "2000-05-30", "2017-03-03", "5559934567", ""),
           (9, "jkrawzcyk99", "default.jpg", "Joe", "Krawzcyk", "1999-02-26", "2014-09-10", "", "jkrawzcyk99@icloud.com"),
           (10, "gene_belcher_600", "geneavatar.jpg", "Gene", "Belcher", "2000-10-12", "2019-12-25", "5554596687", "");
           
-- Subscriber --
INSERT INTO Subscriber
	VALUES (1, 4.99),
           (3, 4.99),
           (7, DEFAULT),
           (9, DEFAULT),
           (10, DEFAULT);
           
-- User_Followers --
INSERT INTO User_Followers
	VALUES (1, 3),
		   (1, 4),
           (1, 5),
           (1, 7),
           (4, 1),
           (4, 2),
           (4, 5),
           (4, 9),
           (6, 4),
           (6, 5),
           (6, 8),
           (9, 1),
           (9, 7),
           (10, 3),
           (10, 4),
           (10, 5);
           
-- Artist_Followers --
INSERT INTO Artist_Followers
	VALUES (1, 6),
           (2, 1),
           (2, 4),
           (2, 6),
           (2, 9),
           (3, 1),
           (3, 2),
           (3, 7),
           (3, 9),
           (4, 1),
           (4, 2),
           (4, 3),
           (4, 6),
           (4, 9),
           (5, 2),
           (5, 7),
           (6, 8),
           (7, 3),
           (7, 4),
           (7, 5),
           (8, 1),
           (8, 10);

-- Playlist --
INSERT INTO Playlist
	VALUES (1, "Rock Playlist", 3),
           (2, "Driving Vibes", 5);           

-- Song_Playlist --
INSERT INTO Song_Playlist
	VALUES (2, 1),
           (10, 1), 
           (21, 1),
           (11, 2),
           (18, 2),
           (34, 2);
           
-- Playlist_Followers --
INSERT INTO Playlist_Followers
	VALUES (1, 1),
           (1, 2),
		   (1, 7),
           (1, 10),
           (2, 2),
           (2, 4),
           (2, 9);
           
-- User_Plays --
INSERT INTO User_Plays
	VALUES (1, 1),
           (1, 2),
		   (1, 3),
           (1, 5),
           (1, 37),
           (1, 38),
           (1, 26),
           (1, 17),
           (1, 31),
           (1, 6),
           (4, 11),
           (4, 13),
           (4, 14),
           (4, 15),
           (4, 24),
           (4, 28),
           (4, 29),
           (4, 17),
           (4, 22),
           (4, 6),
           (8, 17),
           (8, 17),
           (8, 17),
           (8, 6),
           (8, 40),
           (8, 12),
           (8, 13),
           (8, 19),
           (8, 11),
           (8, 32);