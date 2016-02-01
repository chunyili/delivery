use ship;
#(2100,2,12136200081,2000), -- CA-(los angeles)
#(1300,2,null,1000); -- guangdong
insert into route values(100001,1000,2000); -- CN - US
insert into route values(100002,2000,1000); -- US - CN

insert into route values(020001,2000,2100); -- USA - CA
insert into route values(020002,2100,2000); -- CA - USA
insert into route values(020003,2000,2300); -- USA - WA
insert into route values(020004,2300,2000); -- WA - USA
insert into route values(010001,1000,1300); -- CN - GD
insert into route values(010002,1300,1000); -- GD - CN
insert into route values(010003,1000,1400); -- CN - GD
insert into route values(010004,1400,1000); -- GD - CN
#(0013001,001,'AUTOMOBILE','2015-03-23 09:00:00', '2015-03-23 09:40:00'),
#(0013001,002,'AUTOMOBILE','2015-03-25 09:00:00', '2015-03-25 09:40:00'),
#(0013001,003,'AUTOMOBILE','2015-03-27 09:00:00', '2015-03-27 09:40:00'),

#USA <=> CN
insert into instance values(100001,1,'FLIGHT','2015-03-24 23:00:00','2015-03-26 06:00:00');
insert into instance values(100001,2,'FLIGHT','2015-03-27 23:00:00','2015-03-28 06:00:00');
insert into instance values(100002,1,'FLIGHT','2015-03-26 20:00:00','2015-03-26 18:00:00');
insert into instance values(100002,2,'FLIGHT','2015-03-28 20:00:00','2015-03-28 18:00:00');

#USA <=> CA, LA airport <=> LA train station
insert into instance values(020001,1,'AUTOMOBILE','2015-03-23 12:00:00','2015-03-23 13:30:00');
insert into instance values(020001,2,'AUTOMOBILE','2015-03-25 12:00:00','2015-03-25 13:30:00');
insert into instance values(020001,3,'AUTOMOBILE','2015-03-27 12:00:00','2015-03-27 13:30:00');

insert into instance values(020002,1,'AUTOMOBILE','2015-03-23 15:00:00','2015-03-23 16:30:00');
insert into instance values(020002,2,'AUTOMOBILE','2015-03-25 15:00:00','2015-03-25 16:30:00');
insert into instance values(020002,3,'AUTOMOBILE','2015-03-27 15:00:00','2015-03-27 16:30:00');

#USA <=> WA, LA airport <=> WA
insert into instance values(020003,1,'AUTOMOBILE','2015-03-23 12:00:00','2015-03-23 13:30:00');
insert into instance values(020003,2,'AUTOMOBILE','2015-03-25 12:00:00','2015-03-25 13:30:00');
insert into instance values(020003,3,'AUTOMOBILE','2015-03-27 12:00:00','2015-03-27 13:30:00');

insert into instance values(020004,1,'AUTOMOBILE','2015-03-23 15:00:00','2015-03-23 16:30:00');
insert into instance values(020004,2,'AUTOMOBILE','2015-03-25 15:00:00','2015-03-25 16:30:00');
insert into instance values(020004,3,'AUTOMOBILE','2015-03-27 15:00:00','2015-03-27 16:30:00');

#CN<=>GD, Baiyun airport <=> GZ train station
insert into instance values(010001,1,'AUTOMOBILE','2015-03-23 12:00:00','2015-03-23 13:30:00');
insert into instance values(010001,2,'AUTOMOBILE','2015-03-25 12:00:00','2015-03-25 13:30:00');
insert into instance values(010001,3,'AUTOMOBILE','2015-03-27 12:00:00','2015-03-27 13:30:00');

insert into instance values(010002,1,'AUTOMOBILE','2015-03-23 15:00:00','2015-03-23 16:30:00');
insert into instance values(010002,2,'AUTOMOBILE','2015-03-25 15:00:00','2015-03-25 16:30:00');
insert into instance values(010002,3,'AUTOMOBILE','2015-03-27 15:00:00','2015-03-27 16:30:00');

#CN<=>SX, Baiyun airport <=> TY train station
insert into instance values(010003,1,'AUTOMOBILE','2015-03-23 12:00:00','2015-03-23 13:30:00');
insert into instance values(010003,2,'AUTOMOBILE','2015-03-25 12:00:00','2015-03-25 13:30:00');
insert into instance values(010003,3,'AUTOMOBILE','2015-03-27 12:00:00','2015-03-27 13:30:00');

insert into instance values(010004,1,'AUTOMOBILE','2015-03-23 15:00:00','2015-03-23 16:30:00');
insert into instance values(010004,2,'AUTOMOBILE','2015-03-25 15:00:00','2015-03-25 16:30:00');
insert into instance values(010004,3,'AUTOMOBILE','2015-03-27 15:00:00','2015-03-27 16:30:00');