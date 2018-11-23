INSERT INTO RESTAURANT (foodtype,phone,restname,street, website,cityinfo_zip, OWNER_user_name) VALUES
('Indian','86756452','Dhaba','Brogade 45', 'www.dhaba.dk', '4600', 'rest_owner'),
('Indian','26374891','Kashmir','Viaduktvej 2', 'www.kashmir.dk', '3400', 'rest_owner'),
('Indian','85962849','Punjab','Jernbanegade 23', 'www.punjab.dk', '3000', 'rest_owner'),
('Indian','83917264','Golden Indian','Mosevej 2', 'www.goldenindian.dk', '3540', 'rest_owner'),
('Indian','74659182','Namaste', 'Strandboulevarden 5', 'www.namaste.dk', '4000', 'rest_owner'),
('American','8823910','Stacys Diner','Søndre Havnevej 3', 'www.stacysdiner.dk', '4600', 'rest_owner'),
('American','62730192','Bones', 'Åboulevard 75', 'www.bones.dk', '2800', 'rest_owner'),
('American','65648317','Jensens Bøfhus', 'Helsingørvej 33', 'www.jensensboefhus.dk', '3000', 'rest_owner'),
('American','87968571','Hard Rock Café','Rådhuspladsen 23', 'www.hardrockcafe.dk', '4000', 'rest_owner'),
('American','63814231','Burger Palace','Vesterbrogade 43', 'www.burgerpalace.dk', '3400', 'rest_owner'),
('American','99847112','Halifax','Frederikssundvej 97', 'www.halifax.dk', '3540', 'rest_owner'),
('Chinese','33844912','Zhou','Nørregade 108', 'www.zhou.dk', '4600', 'rest_owner'),
('Chinese','22738271','Xin Fu','Vestergade 47', 'www.xinfu.dk', '2800', 'rest_owner'),
('Chinese','74639200','Hai Long','Nørre boulevard 23', 'www.hailong.dk', '3400', 'rest_owner'),
('Vietnamese','72039472','Vietcong','Kongevejen 48','www.vietcong.dk','4600', 'rest_owner'),
('Vietnamese','75620485','Tonkin','Pilestræde 18','www.tonkin.dk','2800', 'rest_owner'),
('Vietnamese','92483283','Bahn Mi Temple','Engelsborgvej 53','www.bahnmitemple.dk','3540', 'rest_owner'),
('Vietnamese','45284959','Spicy Road','Sankt Annæ Alle 33','www.spicyroad.dk','3400', 'rest_owner'),
('Vietnamese','71829456','Lele Kitchen','Rådhuspladsen 2','www.lelekitchen.dk','3000', 'rest_owner'),
('Vietnamese','65739284','Bonjour Vietnam','Nørregade 14','www.bonjourvietnam.dk','4000', 'rest_owner'),
('Italian','47392945','La Perla','Klampenborgvej 34','www.laperla.dk','3540', 'rest_owner'),
('Italian','73002374','Geronissimo','Winthersgade 90','www.geronissimo.dk','4600', 'rest_owner'),
('Italian','86720177','Quatro Stagioni','Strædet 7','www.quatrostagioni.dk','2800', 'rest_owner'),
('Italian','62850024','Pizza Palace','Storetorv 4','www.pizzapalace.dk','3400', 'rest_owner'),
('Italian','36459923','La Vecchia Signora','Gammelgade 14','www.lavecchiasignora.dk','3000', 'rest_owner'),
('Italian','82345510','Roma','Torvet 6','www.roma.dk','4000', 'rest_owner'),
('Chinese','65718234','Beijing','Allegade 33','www.beijing.dk','4000', 'rest_owner'),
('Chinese','99823477','Five Spice','Roskildevej 18','www.fivespice.dk','3540', 'rest_owner'),
('Chinese','67829188','China Garden','Stationsvej 28','www.chinagarden.dk','3000', 'rest_owner'),
('Indian','73125364','Bindia', 'Strandvejen 76', 'www.bindia.dk', '2800', 'rest_owner');

ALTER TABLE MENUITEM CONVERT TO CHARACTER SET utf8;
INSERT INTO MENUITEM (DESCRIPTION, ITEMNAME, PRICE, RESTAURANT_ID) VALUES

("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 1),
("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 2),
("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 3),
("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 4),
("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 5),
("Kyllingefilet, med blandet grøntsager i karrysauce.", "SUBZI CHICKEN", 139, 30),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 1),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 2),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 3),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 4),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 5),
("Kyllingefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE CHICKEN", 139, 30),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 1),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 2),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 3),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 4),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 5),
("Kyllingefilet i karrysauce med friske krydderier.", "CHICKEN CURRY", 129, 30),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 1),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 2),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 3),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 4),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 5),
("Lammefilet lavet efter kokkens egen opskrift.", "INDIA ROYALE LAM", 149, 30),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 1),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 2),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 3),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 4),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 5),
("Lammefilet tilberedt i stærk karrysauce.", "HOT AND SPICY LAMB", 149, 30),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 1),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 2),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 3),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 4),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 5),
("Hjemmelavet hytteost tilberedt med spinat og krydderier.", "PALAK PANEER", 119, 30),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 1),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 2),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 3),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 4),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 5),
("Aubergine, tilberedt i tomat, løg og friske krydderier.", "AUBERGINE BHARTA", 119, 30),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 1),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 2),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 3),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 4),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 5),
("Kikærter tilberedt med kartofler, løg og tomatsauce.", "CHANNA MASALA", 119, 30),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 1),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 2),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 3),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 4),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 5),
("Kongerejer i mild karrysauce.", "KING PRAWN", 145, 30),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 1),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 2),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 3),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 4),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 5),
("Stegte ris med grønne ærter, tilsat krydderier.", "KASHMIRI PULAO", 119, 30),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 6),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 7),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 8),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 9),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 10),
("BBQ Wings glazed in homemade BBQ sauce.", "BBQ WINGS", 39, 11),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 6),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 7),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 8),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 9),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 10),
("BBQ Ribs glazed in homemade BBQ sauce.", "BBQ RIBS", 49, 11),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 6),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 7),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 8),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 9),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 10),
("Fried Chili Cheese Balls with chili ginger chutney.", "CHILI CHEESE BALLS", 49, 11),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 6),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 7),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 8),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 9),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 10),
("Chili grilled beef patty, fried breaded buffalo mozzarella & chili mayo.", "ZÉ BRAZIL", 129, 11),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 6),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 7),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 8),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 9),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 10),
("Onion rings, chili onions, onion jelly, free-range beef patty, béarnaise & tomato salsa.", "ONION JOHNNY", 129, 11),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 6),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 7),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 8),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 9),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 10),
("Double beef, double bacon, double cheddar, BBQ dressing & onion rings.", "THE GOVERNATOR", 139, 11),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 6),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 7),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 8),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 9),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 10),
("Grilled chicken breast with baked tomatoes, herb créme, mixed salad & organic chips.", "CRISPY GUSTAVO", 109, 11),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 6),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 7),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 8),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 9),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 10),
("Fried patty made from organic zucchini, parmesan & garlic. Served with fresh tomato salsa & aioli.", "THE TREEHUGGER", 119, 11),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 6),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 7),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 8),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 9),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 10),
("Spicy fried beetroot patty, cream of chickpeas & green beans, organic lettuce & spicy salsa.", "KEVIN VEEGAN", 109, 11),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 6),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 7),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 8),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 9),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 10),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 11),
("Sliced chili-garlic marinated steak with tarragon mayo & basil pesto.", "THE NEW YORKER", 139, 12),
("Med Kinarejer og krabbekød.", "Majs suppe", 57, 12),
("Majs suppe med Kinarejer og krabbekød.", "Majs suppe", 57, 13),
("Majs suppe med Kinarejer og krabbekød.", "Majs suppe", 57, 14),
("Majs suppe med Kinarejer og krabbekød.", "Majs suppe", 57, 27),
("Majs suppe med Kinarejer og krabbekød.", "Majs suppe", 57, 28),
("Majs suppe med Kinarejer og krabbekød.", "Majs suppe", 57, 29),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 12),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 13),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 14),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 27),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 28),
("Mmmhmm, den smager godt.", "Wantan suppe", 57, 29),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 12),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 13),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 14),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 27),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 28),
("Hønsekød suppe med grøntsager.", "Hønsekød suppe", 57, 29),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 12),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 13),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 14),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 27),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 28),
("Kylling med cashew nødder og mandler.", "Kylling", 57, 29),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 12),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 13),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 14),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 27),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 28),
("Kylling med kinesiske grøntsager.", "Kylling", 57, 29),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 12),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 13),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 14),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 27),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 28),
("Gon Bao kylling I stykke med jordnødder(stærk).", "Gon Bao", 110, 29),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 12),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 13),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 14),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 27),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 28),
("Dybstegt kylling I sursød sauce.", "Dybstegt kylling", 110, 29),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 12),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 13),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 14),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 27),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 28),
("Dystegt svinekød i sursød sauce.", "Dystegt svinekød", 110, 29),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 12),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 13),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 14),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 27),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 28),
("Stegt oksekød med blandet grøntsager.", "Stegt oksekød", 113, 29),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 12),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 13),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 14),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 27),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 28),
("Stegt oksekød med porrer.", "Stegt oksekød", 113, 29),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 15),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 16),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 17),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 18),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 19),
("Den kendte vietnamesiske nationalret. Mildt krydret oksekødsuppe med flade risnudler og skiver af mør oksefilet. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 20),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 15),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 16),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 17),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 18),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 19),
("Specialitet fra den byen Hué, der var den vietnamesiske konges domicil. Stærkt krydret oksekødsuppe med risnudler og vietnamesisk mortadelpølse. Serveres med lime, friske koriander og bønnespirer.", "Oksekødsuppe", 89, 20),
-- Herfra fejler det!!! Det kræver at database_table (foodfinderDB.MENUITEM) kører denne sql query: "ALTER TABLE your_database_name.your_table CONVERT TO CHARACTER SET utf8;"
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​Kylling", 95, 15),
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​​Kylling", 95, 16),
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​​Kylling", 95, 17),
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​​Kylling", 95, 18),
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​​Kylling", 95, 19),
("Friske vietnamesiske ruller med fint skåret kylling, tigerrejer, risnudler, bønnespirer, peberfrugter, agurk, friske koriander og mynthe, svøbt i frisk rispapir.", "​​Kylling", 95, 20),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​Tunfisk", 95, 15),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​​Tunfisk", 95, 16),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​​Tunfisk", 95, 17),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​​Tunfisk", 95, 18),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​​Tunfisk", 95, 19),
("Frisk tunfisk med frisk mynte, koriander, sød basilikum, peberfrugter, enoki svampe og bionda salat.​", "​​Tunfisk", 95, 20),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 15),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 16),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 17),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 18),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 19),
("Friske stykker af tunfisk tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Tunfisk", 129, 20),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​Laks", 119, 15),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Laks", 119, 16),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Laks", 119, 17),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Laks", 119, 18),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Laks", 119, 19),
("Friske stykker af råmarineret laks tilberedt med sesamfrø, chili, citron, sesamolie og fiskesauce.​", "​​Laks", 119, 20),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​Tigerrejer", 149, 15),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 149, 16),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 149, 17),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 149, 18),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 149, 19),
("Vietnamesisk salat med tigerrejer, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 149, 20),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 15),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 16),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 17),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 18),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 19),
("Vietnamesisk salat med tigerrejer, kyllingebryst, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.​", "​​Tigerrejer", 159, 20),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 15),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 16),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 17),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 18),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 19),
("Vietnamesisk salat med råmarineret laks, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret laks", 169, 20),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 15),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 16),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 17),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 18),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 19),
("Vietnamesisk salat med råmarineret tunfisk, papaya, lotus, grøn mango, agurk, fintsnittet hvidkål og gulerod i en marinade af vineddike, fiskesauce, hvidløg, lime, sesamfrø og peanuts.", "​Råmarineret tunfisk", 179, 20),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 21),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 22),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 23),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 24),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 25),
("Med trøffel, parmesan, broccolini & zucchini.", "​Orecchiette", 195, 26),
-- Hertil fejler det!!!
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 21),
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 22),
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 23),
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 24),
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 25),
("Med kantareller, kalvespidsbryst, forårsløg, chili & parmesan.", "Tagliatelle", 155, 26),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 21),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 22),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 23),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 24),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 25),
("Vendt med basilikum, parmesancreme & pinjekerne krummer.", "Spaghetti", 135, 26),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 21),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 22),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 23),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 24),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 25),
("Med svampe, pecorino ost & persille.", "Risotto", 145, 26),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 21),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 22),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 23),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 24),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 25),
("Med rosmarin brødkrummer, lammesky & stegt broccolini.", "Bagt lammekrone", 235, 26),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 21),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 22),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 23),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 24),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 25),
("Bone-in rib eye ca. 500gr, grillet rare med parmesan, trøffelolie & balsamico.", "Tagliata di manzo", 395, 26),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med pinjekerner, grønkål, fennikel & klementinsauce.", "Stegt andebryst", 235, 21),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 21),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 22),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 23),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 24),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 25),
("Med borlotti bønner, tomat, peberfrugt sauce & oregano.", "Grillet tun", 225, 26),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 21),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 22),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 23),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 24),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 25),
("Med chokolade, amaretto & amarena kirsebær.", "Vanilje-semifreddo", 95, 26),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 21),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 22),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 23),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 24),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 25),
("Med hasselnød, kakao nibs & kaffeis.", "Tiramisu", 95, 26);

