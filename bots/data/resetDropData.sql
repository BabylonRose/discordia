PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
DROP TABLE RDT;
CREATE TABLE RDT (id integer,item text, quantity integer, rarity integer);
INSERT INTO "RDT" VALUES(1,'Rune kiteshield',1,1);
INSERT INTO "RDT" VALUES(2,'Rune sq shield',1,2);
INSERT INTO "RDT" VALUES(3,'Dragonstone',1,2);
INSERT INTO "RDT" VALUES(4,'Dragon med helm',1,1);
INSERT INTO "RDT" VALUES(5,'Tooth half key',1,19);
INSERT INTO "RDT" VALUES(6,'Loop half key',1,20);
INSERT INTO "RDT" VALUES(7,'MegaRare',1,15);
INSERT INTO "RDT" VALUES(8,'Gem',1,20);
INSERT INTO "RDT" VALUES(9,'Runite bar',1,5);
INSERT INTO "RDT" VALUES(10,'Rune 2h sword',1,3);
INSERT INTO "RDT" VALUES(11,'Rune battleaxe',1,3);
INSERT INTO "RDT" VALUES(12,'Law rune',45,2);
INSERT INTO "RDT" VALUES(13,'Death rune',45,2);
INSERT INTO "RDT" VALUES(14,'Steel arrow',150,2);
INSERT INTO "RDT" VALUES(15,'Silver ore',100,2);
INSERT INTO "RDT" VALUES(16,'Rune arrow',42,2);
INSERT INTO "RDT" VALUES(17,'Adamant javelin',20,2);
INSERT INTO "RDT" VALUES(18,'Nature rune',67,3);
INSERT INTO "RDT" VALUES(19,'Coins',3000,22);
DROP TABLE Gem;
CREATE TABLE Gem (id integer, item text, quantity integer, rarity integer);
INSERT INTO "Gem" VALUES(1,'Uncut sapphire',1,25);
INSERT INTO "Gem" VALUES(2,'Uncut emerald',1,8);
INSERT INTO "Gem" VALUES(3,'Uncut ruby',1,8);
INSERT INTO "Gem" VALUES(4,'Uncut diamond',1,5);
INSERT INTO "Gem" VALUES(5,'Loop half key',1,25);
INSERT INTO "Gem" VALUES(6,'Tooth half key',1,16);
INSERT INTO "Gem" VALUES(7,'Chaos talisman',1,25);
INSERT INTO "Gem" VALUES(8,'Nature talisman',1,8);
INSERT INTO "Gem" VALUES(9,'Rune javelins',1,8);
DROP TABLE MegaRare;
CREATE TABLE MegaRare (id integer, item text, quantity integer, rarity integer);
INSERT INTO "MegaRare" VALUES(1,'Rune spear',1,64);
INSERT INTO "MegaRare" VALUES(2,'Dragon spear',1,32);
INSERT INTO "MegaRare" VALUES(3,'Shield left half',1,24);
INSERT INTO "MegaRare" VALUES(4,'Nothing',1,904);
DROP TABLE MegaRare_row;
CREATE TABLE MegaRare_row (id integer, item text, quantity integer, rarity integer);
INSERT INTO "MegaRare_row" VALUES(1,'Rune spear',1,544);
INSERT INTO "MegaRare_row" VALUES(2,'Dragon spear',1,274);
INSERT INTO "MegaRare_row" VALUES(3,'Shield left half',1,206);
INSERT INTO "MegaRare_row" VALUES(4,'Nothing',1,0);
DROP TABLE crystal_chest_roll;
CREATE TABLE crystal_chest_roll (id int, loot_id text, rarity int);
INSERT INTO "crystal_chest_roll" VALUES(1,'loot_1',13083);
INSERT INTO "crystal_chest_roll" VALUES(2,'loot_2',5460);
INSERT INTO "crystal_chest_roll" VALUES(3,'loot_3',3445);
INSERT INTO "crystal_chest_roll" VALUES(4,'loot_4',2524);
INSERT INTO "crystal_chest_roll" VALUES(5,'loot_5',2121);
INSERT INTO "crystal_chest_roll" VALUES(6,'loot_6',1381);
INSERT INTO "crystal_chest_roll" VALUES(7,'loot_7',1203);
INSERT INTO "crystal_chest_roll" VALUES(8,'loot_8',1150);
INSERT INTO "crystal_chest_roll" VALUES(9,'loot_9',1068);
INSERT INTO "crystal_chest_roll" VALUES(10,'loot_10',901);
INSERT INTO "crystal_chest_roll" VALUES(11,'loot_11',347);
INSERT INTO "crystal_chest_roll" VALUES(12,'loot_12',85);
DROP TABLE crystal_chest_loot;
CREATE TABLE crystal_chest_loot (id int, loot_id text, loot text, quantity int);
INSERT INTO "crystal_chest_loot" VALUES(1,'loot_1','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(2,'loot_1','spinach roll',1);
INSERT INTO "crystal_chest_loot" VALUES(3,'loot_1','coins',2000);
INSERT INTO "crystal_chest_loot" VALUES(4,'loot_2','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(5,'loot_3','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(6,'loot_3','coins',1000);
INSERT INTO "crystal_chest_loot" VALUES(7,'loot_3','raw swordfish',5);
INSERT INTO "crystal_chest_loot" VALUES(8,'loot_4','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(9,'loot_4','Air rune',50);
INSERT INTO "crystal_chest_loot" VALUES(10,'loot_4','Water rune',50);
INSERT INTO "crystal_chest_loot" VALUES(11,'loot_4','Earth rune',50);
INSERT INTO "crystal_chest_loot" VALUES(12,'loot_4','Fire rune',50);
INSERT INTO "crystal_chest_loot" VALUES(13,'loot_4','Mind rune',50);
INSERT INTO "crystal_chest_loot" VALUES(14,'loot_4','Body rune',50);
INSERT INTO "crystal_chest_loot" VALUES(15,'loot_4','Chaos rune',10);
INSERT INTO "crystal_chest_loot" VALUES(16,'loot_4','Cosmic rune',10);
INSERT INTO "crystal_chest_loot" VALUES(17,'loot_4','Death rune',10);
INSERT INTO "crystal_chest_loot" VALUES(18,'loot_4','Nature rune',10);
INSERT INTO "crystal_chest_loot" VALUES(19,'loot_4','Law rune',10);
INSERT INTO "crystal_chest_loot" VALUES(20,'loot_5','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(21,'loot_5','Coal',100);
INSERT INTO "crystal_chest_loot" VALUES(22,'loot_6','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(23,'loot_6','Ruby',2);
INSERT INTO "crystal_chest_loot" VALUES(24,'loot_6','Diamond',2);
INSERT INTO "crystal_chest_loot" VALUES(25,'loot_7','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(26,'loot_7','coins',750);
INSERT INTO "crystal_chest_loot" VALUES(27,'loot_7','Tooth half key',1);
INSERT INTO "crystal_chest_loot" VALUES(28,'loot_8','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(29,'loot_8','Runite bar',3);
INSERT INTO "crystal_chest_loot" VALUES(30,'loot_9','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(31,'loot_9','coins',750);
INSERT INTO "crystal_chest_loot" VALUES(32,'loot_9','Loop half key',1);
INSERT INTO "crystal_chest_loot" VALUES(33,'loot_10','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(34,'loot_10','Iron ore',150);
INSERT INTO "crystal_chest_loot" VALUES(35,'loot_11','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(36,'loot_11','Adamant sq shield',1);
INSERT INTO "crystal_chest_loot" VALUES(37,'loot_12','Uncut dragonstone',1);
INSERT INTO "crystal_chest_loot" VALUES(38,'loot_12','Rune platelegs',1);
COMMIT;
