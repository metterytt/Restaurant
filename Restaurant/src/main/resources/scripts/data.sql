CREATE TABLE if not exists contactinfo (
 id INT(6) PRIMARY KEY,
 address VARCHAR(10) NOT NULL,
 cityinfo VARCHAR(40) NOT NULL,
 phone VARCHAR(60) NOT NULL,
);

CREATE TABLE if not exists restaurant (
 id INT(6) PRIMARY KEY,
 name VARCHAR(10) NOT NULL,
 contactinfo_id int(40) NOT NULL,
 foodtype VARCHAR(60) NOT NULL,
);

CREATE TABLE if not exists cityinfo (
 zip INT(6) PRIMARY KEY,
 city VARCHAR(10) NOT NULL,
);

CREATE TABLE if not exists menuitem (
 id INT(6) PRIMARY KEY,
 foodtype_id VARCHAR(10) NOT NULL,
 contactinfo_id VARCHAR(40) NOT NULL,
);

INSERT INTO restaurant (id,name,contactinfo,foodtype) VALUES
(0,'male','Chrisbjørn','Munch','chrisbjørn85@somewhere.dk'),
(1,'male','Mannfred','Thygesen','mannfred58@somewhere.dk'),
(2,'female','Pheline','Petersen','pheline84@somewhere.dk'),
(3,'female','Marka','Skov','marka64@somewhere.dk'),
(4,'female','Rosario','Lauritzen','rosario49@somewhere.dk'),
(5,'male','Viliyan','Toft','viliyan21@somewhere.dk'),
(6,'female','Maybritmira','Eskildsen','maybritmira22@somewhere.dk'),
(7,'male','Faheem','Bertelsen','faheem32@somewhere.dk'),
(8,'female','Dimka','Jacobsen','dimka90@somewhere.dk'),
(9,'female','Pingyi','Carlsen','pingyi63@somewhere.dk'),
(10,'male','Roall','Bjerregård','roall49@somewhere.dk'),
(11,'male','Villaz','Nissen','villaz20@somewhere.dk'),
(12,'male','Ny','Frederiksen','ny26@somewhere.dk'),
(13,'female','Elliesofia','Juul','elliesofia85@somewhere.dk'),
(14,'female','Rannveig','Khan','rannveig69@somewhere.dk'),
(15,'male','Jens-Peter','Bech','jens-peter96@somewhere.dk'),
(16,'female','Fauna','Bisgaard','fauna88@somewhere.dk'),
(17,'male','Arian','Sommer','arian25@somewhere.dk'),
(18,'female','Djinvat','Johannsen','djinvat45@somewhere.dk'),
(19,'female','Rifka','Danielsen','rifka34@somewhere.dk'),
(20,'male','Fadi','Bach','fadi42@somewhere.dk'),
(21,'male','Yousof','Toft','yousof31@somewhere.dk'),
(22,'female','Hilan','Mathiasen','hilan32@somewhere.dk'),
(23,'male','Aanis','Iversen','aanis24@somewhere.dk'),
(24,'male','Lenus','Jørgensen','lenus97@somewhere.dk'),
(25,'female','Kankolongo','Lind','kankolongo94@somewhere.dk'),
(26,'female','Abigija','Frederiksen','abigija50@somewhere.dk'),
(27,'male','Karim','Thomsen','karim36@somewhere.dk'),
(28,'female','Dinne','Nørgård','dinne14@somewhere.dk'),
(29,'female','Lareb','Carstensen','lareb52@somewhere.dk'),
(30,'male','Nithilan','Ravn','nithilan21@somewhere.dk'),
(31,'male','Mikha','Enevoldsen','mikha61@somewhere.dk'),
(32,'female','Valia','Ahmed','valia72@somewhere.dk'),
(33,'female','Lajka','Holst','lajka102@somewhere.dk'),
(34,'male','Everett','Dalgård','everett74@somewhere.dk'),
(35,'female','Perpetu','Dam','perpetu45@somewhere.dk'),
(36,'male','Sahaas','Mathiesen','sahaas14@somewhere.dk'),
(37,'male','Tejn','Khan','tejn99@somewhere.dk'),
(38,'male','Rhythm','Lauritsen','rhythm20@somewhere.dk'),
(39,'male','Tiago','Kirkegaard','tiago53@somewhere.dk'),
(40,'female','Ünzile','Hemmingsen','ünzile97@somewhere.dk'),
(41,'female','Tia','Svendsen','tia85@somewhere.dk'),
(42,'male','Yoseph','Nørgaard','yoseph99@somewhere.dk'),
(43,'male','Mikeé','Kirkegård','mikeé69@somewhere.dk'),
(44,'male','Joshva','Frandsen','joshva49@somewhere.dk'),
(45,'male','Tulieth','Markussen','tulieth85@somewhere.dk'),
(46,'female','Ghina','Bonde','ghina68@somewhere.dk'),
(47,'male','Haki','Steffensen','haki60@somewhere.dk'),
(48,'female','Domenic','Christiansen','domenic14@somewhere.dk'),
(49,'female','Nya','Krogh','nya60@somewhere.dk'),
(50,'female','Omokhafue','Dahl','omokhafue70@somewhere.dk'),
(51,'male','Khasro','Ahmed','khasro41@somewhere.dk'),
(52,'female','Sibie','Svensson','sibie20@somewhere.dk'),
(53,'male','Asadullakh','Vestergård','asadullakh79@somewhere.dk'),
(54,'male','Jibrail','Lorenzen','jibrail60@somewhere.dk'),
(55,'male','Rokil','Thøgersen','rokil103@somewhere.dk'),
(56,'male','Pórto','Persson','pórto69@somewhere.dk'),
(57,'female','Maissane','Laustsen','maissane25@somewhere.dk'),
(58,'male','Rewend','Müller','rewend44@somewhere.dk'),
(59,'female','Cikoria','Christoffersen','cikoria13@somewhere.dk'),
(60,'female','Magdelone','Carlsen','magdelone32@somewhere.dk'),
(61,'male','Wiremu','Jønsson','wiremu26@somewhere.dk'),
(62,'female','Salinja','Schultz','salinja25@somewhere.dk'),
(63,'female','Nkiru','Kristoffersen','nkiru36@somewhere.dk'),
(64,'female','Nielly','Olsson','nielly19@somewhere.dk'),
(65,'female','Anuka','Krogh','anuka9@somewhere.dk'),
(66,'female','Eveline','Kjærgaard','eveline74@somewhere.dk'),
(67,'male','Predbjørn','Christensen','predbjørn60@somewhere.dk'),
(68,'male','Reduan','Mortensen','reduan85@somewhere.dk'),
(69,'female','Babett','Kofoed','babett77@somewhere.dk'),
(70,'male','Yulin','Olsen','yulin70@somewhere.dk'),
(71,'female','Nannasofie','Thomassen','nannasofie90@somewhere.dk'),
(72,'female','Ajatsa','Nissen','ajatsa46@somewhere.dk'),
(73,'female','Maliarak','Carstensen','maliarak15@somewhere.dk'),
(74,'male','Manneke','Munk','manneke93@somewhere.dk'),
(75,'female','Armila','Jeppesen','armila37@somewhere.dk'),
(76,'male','Neqeren','Lindberg','neqeren80@somewhere.dk'),
(77,'male','Sirak','Søgaard','sirak72@somewhere.dk'),
(78,'female','Suli','Berg','suli22@somewhere.dk'),
(79,'female','Menna','Ågaard','menna66@somewhere.dk'),
(80,'female','Aseel','Overgård','aseel16@somewhere.dk'),
(81,'male','Querneq','Brandt','querneq88@somewhere.dk'),
(82,'male','Nikholai','Bjerregård','nikholai92@somewhere.dk'),
(83,'female','Sümeyya','Bendtsen','sümeyya21@somewhere.dk'),
(84,'male','Fargo','Lauritzen','fargo22@somewhere.dk'),
(85,'female','Anitalina','Thøgersen','anitalina95@somewhere.dk'),
(86,'female','Jameelah','Bjerregård','jameelah21@somewhere.dk'),
(87,'male','Deno','Lange','deno30@somewhere.dk'),
(88,'female','Cenzia','Holm','cenzia35@somewhere.dk'),
(89,'female','Atena','Lauritzen','atena75@somewhere.dk'),
(90,'male','Eerik','Thomassen','eerik99@somewhere.dk'),
(91,'male','Tefik','Vinther','tefik46@somewhere.dk'),
(92,'female','Margarethe','Hald','margarethe66@somewhere.dk'),
(93,'female','Bethan','Bech','bethan95@somewhere.dk'),
(94,'male','Monir','Holm','monir46@somewhere.dk'),
(95,'female','Chrestine','Kirkegaard','chrestine54@somewhere.dk'),
(96,'male','Zepp','Kristoffersen','zepp58@somewhere.dk'),
(97,'female','Elissabeth','Toft','elissabeth105@somewhere.dk'),
(98,'female','Beth','Krogh','beth85@somewhere.dk'),
(99,'female','Zuzanna','Kofoed','zuzanna103@somewhere.dk');
