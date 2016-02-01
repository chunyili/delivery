insert into store values
(2300,'Washington',2,12066243313,2000), -- WA (Seattle)
(2301,'Seattle',3,12066241550,2300),-- Seattle
(2302,'Olympia',3,13607052636,2300),-- Olympia
(2303,'Pullman',3,18007425877,2300);-- Pullman
 
insert into store_add values
(2300,'USA','WA','WA(Seattle)','815 1ST AVE','98104','-08:00'), -- WA
(2301,'USA','WA','Seattle','1700 7TH AVE','98101','-08:00'), -- Seattle
(2302,'USA','WA','Olympia','1001 COOPER PT RD SW','98502','-08:00'), -- Olympia
(2303,'USA','WA','Pullman','615 N GRAND AVE','99163','-08:00'); -- Pullman
 
insert into zipcode values
('98101',2301),
('98102',2301),
('98103',2301),
('98104',2301),
('98105',2301),
('98106',2301),
('98107',2301),
('98109',2301),
('98112',2301),
('98113',2301),
('98115',2301),
('98116',2301),
('98117',2301),
('98118',2301),
('98119',2301),
('98121',2301),
('98122',2301),
('98125',2301),
('98126',2301),
('98131',2301),
('98132',2301),
('98134',2301),
('98136',2301),
('98144',2301),
('98154',2301),
('98161',2301),
('98164',2301),
('98171',2301),
('98174',2301), -- Seattle end
('98501',2302),
('98502',2302),
('98503',2302),
('98506',2302),
('98512',2302),
('98513',2302),
('98516',2302),-- Olympia end
('99163',2303),
('99165',2303); -- Pullman end
 
insert into courier values
(001,2301),
(002,2301),
(003,2301),
(004,2301),
(005,2301),
(001,2302),
(002,2302),
(003,2302),
(004,2302),
(005,2302),
(001,2303),
(002,2303),
(003,2303),
(004,2303),
(005,2303);
 
insert into route values
(0023001,2300,2301), -- from WA to cites (to Seattle)
(0023002,2300,2302), -- to Olympia
(0023003,2300,2303), -- to Pullman
(0023004,2301,2300), -- from cites to WA (from Seattle)
(0023005,2302,2300), -- from Olympia
(0023006,2303,2300), -- from Pullman
(0023007,2301,2302), -- between cites within WA (Seattle to Olympia)
(0023008,2301,2303), -- Seattle to Pullman
(0023009,2302,2301), -- Olympia to Seattle
(0023010,2302,2303), -- Olympia to Pullman
(0023011,2303,2301), -- Pullman to Seattle
(0023012,2303,2302); -- Pullman to Olympia
 
insert into instance values
-- 2015-03-23 ~ 2015-03-29 Monday-Sunday between province to city: 3/week, between cities: 2/week
(0023001,001,'AUTOMOBILE','2015-03-23 09:00:00', '2015-03-23 09:05:00'),
(0023001,002,'AUTOMOBILE','2015-03-25 09:00:00', '2015-03-25 09:05:00'),
(0023001,003,'AUTOMOBILE','2015-03-27 09:00:00', '2015-03-27 09:05:00'),
(0023002,001,'AUTOMOBILE','2015-03-23 09:00:00','2015-03-23 10:06:00'),
(0023002,002,'AUTOMOBILE','2015-03-25 09:00:00','2015-03-25 10:06:00'),
(0023002,003,'AUTOMOBILE','2015-03-27 09:00:00','2015-03-27 10:06:00'),
(0023003,001,'FLIGHT','2015-03-23 09:00:00','2015-03-23 09:55:00'),
(0023003,002,'FLIGHT','2015-03-25 09:00:00','2015-03-25 09:55:00'),
(0023003,003,'FLIGHT','2015-03-27 09:00:00','2015-03-27 09:55:00'),
(0023004,001,'AUTOMOBILE','2015-03-24 09:00:00', '2015-03-24 09:06:00'),
(0023004,002,'AUTOMOBILE','2015-03-26 09:00:00', '2015-03-26 09:06:00'),
(0023004,003,'AUTOMOBILE','2015-03-28 09:00:00', '2015-03-28 09:06:00'),
(0023005,001,'AUTOMOBILE','2015-03-24 09:00:00','2015-03-24 10:26:00'),
(0023005,002,'AUTOMOBILE','2015-03-26 09:00:00','2015-03-26 10:26:00'),
(0023005,003,'AUTOMOBILE','2015-03-28 09:00:00','2015-03-28 10:26:00'),
(0023006,001,'FLIGHT','2015-03-24 09:00:00','2015-03-24 10:05:00'),
(0023006,002,'FLIGHT','2015-03-26 09:00:00','2015-03-26 10:05:00'),
(0023006,003,'FLIGHT','2015-03-28 09:00:00','2015-03-28 10:05:00'),
(0023007,001,'AUTOMOBILE','2015-03-25 09:00:00','2015-03-25 10:07:00'),
(0023007,002,'AUTOMOBILE','2015-03-28 09:00:00','2015-03-28 10:07:00'),
(0023008,001,'FLIGHT','2015-03-25 09:00:00','2015-03-25 09:55:00'),
(0023008,002,'FLIGHT','2015-03-28 07:00:00','2015-03-28 09:55:00'),
(0023009,001,'AUTOMOBILE','2015-03-26 09:00:00','2015-03-26 10:31:00'),
(0023009,002,'AUTOMOBILE','2015-03-29 09:00:00','2015-03-29 10:31:00'),
(0023010,001,'AUTOMOBILE','2015-03-25 09:00:00','2015-03-25 14:19:00'),
(0023010,002,'AUTOMOBILE','2015-03-28 09:00:00','2015-03-28 14:19:00'),
(0023011,001,'FLIGHT','2015-03-26 09:00:00','2015-03-26 10:05:00'),
(0023011,002,'FLIGHT','2015-03-29 09:00:00','2015-03-29 10:05:00'),
(0023012,001,'AUTOMOBILE','2015-03-26 09:00:00','2015-03-26 14:17:00'),
(0023012,002,'AUTOMOBILE','2015-03-29 09:00:00','2015-03-29 14:17:00');
 
insert into customer values
(002300,12065158821,'TSmith@gmail.com','Terry','Smith','-08:00'),
(002301,13606890433,'Nola@outlook.com','John','King','-08:00'),
(002302,14259448739,'Hopkins.daniel@sjsu.edu','Daniel','Hopkins','-08:00');
 
insert into customer_add values
(002300,'USA','WA','Seattle','1101 18th Ave','98122'),
(002301,'USA','WA','Olympia','5428 51st Ave NW','98502'),
(002302,'USA','WA','Pullman','1115 NW Eden Dr','99163');