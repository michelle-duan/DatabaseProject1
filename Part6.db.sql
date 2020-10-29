--Part 6: Populate Table with Test Data

BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "student" (
	"nuid"	TEXT NOT NULL UNIQUE,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"university_email"	TEXT,
	PRIMARY KEY("nuid")
);
CREATE TABLE IF NOT EXISTS "course" (
	"course_id"	TEXT NOT NULL,
	"course_name"	TEXT NOT NULL,
	"instructor_id"	TEXT NOT NULL,
	PRIMARY KEY("course_id")
);
CREATE TABLE IF NOT EXISTS "instructor" (
	"instructor_id"	TEXT NOT NULL UNIQUE,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"university_email"	TEXT,
	PRIMARY KEY("instructor_id")
);
CREATE TABLE IF NOT EXISTS "course_registration" (
	"course_id"	TEXT,
	"nuid"	TEXT,
	FOREIGN KEY("nuid") REFERENCES "student"("nuid")
);
INSERT INTO "student" VALUES ('4526503541','Joyan','Lickess','jlickess0@reference.com');
INSERT INTO "student" VALUES ('0788585320','Julie','Denne','jdenne1@ehow.com');
INSERT INTO "student" VALUES ('6201892753','Alli','Workes','aworkes2@alibaba.com');
INSERT INTO "student" VALUES ('1337154784','Fionna','Attoe','fattoe3@cpanel.net');
INSERT INTO "student" VALUES ('0119550695','Bordie','La Vigne','blavigne4@kickstarter.com');
INSERT INTO "student" VALUES ('5993457864','Jerrilee','Loren','jloren5@ebay.com');
INSERT INTO "student" VALUES ('7937526076','Hunfredo','Petyt','hpetyt6@163.com');
INSERT INTO "student" VALUES ('8595995532','Amery','Wardlow','awardlow7@twitpic.com');
INSERT INTO "student" VALUES ('8825881940','Sabine','Shevelin','sshevelin8@elpais.com');
INSERT INTO "student" VALUES ('1641065885','Brier','Gumary','bgumary9@usnews.com');
INSERT INTO "student" VALUES ('6222643884','Chaddie','Cornilleau','ccornilleaua@ameblo.jp');
INSERT INTO "student" VALUES ('2867188628','Jaymie','Berston','jberstonb@reuters.com');
INSERT INTO "student" VALUES ('4010635622','Nerissa','Dicky','ndickyc@xing.com');
INSERT INTO "student" VALUES ('5196006834','Sisely','Deporte','sdeported@google.com.hk');
INSERT INTO "student" VALUES ('4154570609','Hastie','Retallick','hretallicke@disqus.com');
INSERT INTO "student" VALUES ('6095770688','Fletcher','Focke','ffockef@4shared.com');
INSERT INTO "student" VALUES ('6626575198','Launce','Crumpton','lcrumptong@epa.gov');
INSERT INTO "student" VALUES ('8230941297','Audre','Giacomozzo','agiacomozzoh@webnode.com');
INSERT INTO "student" VALUES ('7972486867','Bab','Colquyte','bcolquytei@ebay.co.uk');
INSERT INTO "student" VALUES ('7357533646','Luciana','Basnall','lbasnallj@ox.ac.uk');
INSERT INTO "student" VALUES ('6347758512','Dunstan','Swanton','dswantonk@ucsd.edu');
INSERT INTO "student" VALUES ('8563799754','Garald','Richfield','grichfieldl@mit.edu');
INSERT INTO "student" VALUES ('5599885054','Norene','Ducrow','nducrowm@google.co.uk');
INSERT INTO "student" VALUES ('4240596505','Brett','Arkcoll','barkcolln@sitemeter.com');
INSERT INTO "student" VALUES ('6416985012','Gates','Penton','gpentono@mozilla.com');
INSERT INTO "student" VALUES ('0078327342','Jeanna','Gwin','jgwinp@quantcast.com');
INSERT INTO "student" VALUES ('5811069480','Brook','Kitteman','bkittemanq@irs.gov');
INSERT INTO "student" VALUES ('5298867219','Tani','Naile','tnailer@squidoo.com');
INSERT INTO "student" VALUES ('0645215066','Karalynn','Dunklee','kdunklees@angelfire.com');
INSERT INTO "student" VALUES ('8615332339','Emmalynn','Meggison','emeggisont@wikipedia.org');
INSERT INTO "student" VALUES ('3091910954','Charlena','Noods','cnoodsu@e-recht24.de');
INSERT INTO "student" VALUES ('3900154465','Mortie','Wilmore','mwilmorev@mapy.cz');
INSERT INTO "student" VALUES ('9477489972','Anjela','Comfort','acomfortw@cnn.com');
INSERT INTO "student" VALUES ('5275340869','Myranda','Wytchard','mwytchardx@symantec.com');
INSERT INTO "student" VALUES ('4663441017','Cornelia','Langelay','clangelayy@webs.com');
INSERT INTO "student" VALUES ('4370203791','Bartel','Mitchener','bmitchenerz@ucla.edu');
INSERT INTO "student" VALUES ('9051811942','Georgia','Goscar','ggoscar10@slate.com');
INSERT INTO "student" VALUES ('8655758671','Isa','Boyton','iboyton11@google.nl');
INSERT INTO "student" VALUES ('0282616853','Granthem','Cheeseman','gcheeseman12@4shared.com');
INSERT INTO "student" VALUES ('8043403414','Reade','McKerron','rmckerron13@dedecms.com');
INSERT INTO "student" VALUES ('9934822814','Cointon','Rue','crue14@posterous.com');
INSERT INTO "student" VALUES ('5088611110','Loella','Scarlet','lscarlet15@studiopress.com');
INSERT INTO "student" VALUES ('1809753651','Dallon','Whitelock','dwhitelock16@shinystat.com');
INSERT INTO "student" VALUES ('9904147876','Carmine','Grieger','cgrieger17@mayoclinic.com');
INSERT INTO "student" VALUES ('6360461161','Farlie','Tinsley','ftinsley18@aol.com');
INSERT INTO "student" VALUES ('2033436675','Anett','Piggins','apiggins19@nature.com');
INSERT INTO "student" VALUES ('5472207894','Parnell','Nolin','pnolin1a@reddit.com');
INSERT INTO "student" VALUES ('8237270940','Timi','Durdle','tdurdle1b@ask.com');
INSERT INTO "student" VALUES ('8806120557','Vivyanne','Valois','vvalois1c@cargocollective.com');
INSERT INTO "student" VALUES ('4440121012','Freeman','Peto','fpeto1d@youtube.com');
INSERT INTO "course" VALUES ('5001','Python','101');
INSERT INTO "course" VALUES ('5002','Discrete Math','103');
INSERT INTO "course" VALUES ('5003','Java','102');
INSERT INTO "course" VALUES ('5004','C','101');
INSERT INTO "course" VALUES ('5005','Ruby','104');
INSERT INTO "course" VALUES ('5006','Web Development','105');
INSERT INTO "course" VALUES ('5007','Database','106');
INSERT INTO "course" VALUES ('5008','Computer Systems','110');
INSERT INTO "course" VALUES ('5009','Database','102');
INSERT INTO "course" VALUES ('5010','Computer Systems','107');
INSERT INTO "course" VALUES ('5011','Database','108');
INSERT INTO "course" VALUES ('5012','Cloud Computing','110');
INSERT INTO "course" VALUES ('5013','Distributed Systems','104');
INSERT INTO "course" VALUES ('5014','Mobile App Development','102');
INSERT INTO "course" VALUES ('5015','Algorithms','105');
INSERT INTO "course" VALUES ('5016','C++','107');
INSERT INTO "course" VALUES ('5017','Practicum','104');
INSERT INTO "course" VALUES ('5018','Data Structures','109');
INSERT INTO "course" VALUES ('5020','Game Development','108');
INSERT INTO "instructor" VALUES ('101','Cecile','Learmonth','clearmonth0@northeastern.edu');
INSERT INTO "instructor" VALUES ('102','Marley','Eloy','meloy1@northeastern.edu');
INSERT INTO "instructor" VALUES ('103','Fred','Bryenton','fbryenton2@northeastern.edu');
INSERT INTO "instructor" VALUES ('104','Arlyne','Went','awent3@northeastern.edu');
INSERT INTO "instructor" VALUES ('105','Van','Ive','vive4@northeastern.edu');
INSERT INTO "instructor" VALUES ('106','Daron','Parnby','dparnby5@northeastern.edu');
INSERT INTO "instructor" VALUES ('107','Allina','Very','avery6@northeastern.edu');
INSERT INTO "instructor" VALUES ('108','Avram','Brend','abrend7@northeastern.edu');
INSERT INTO "instructor" VALUES ('109','Kalie','Snassell','ksnassell8@enortheastern.edu');
INSERT INTO "instructor" VALUES ('110','Crystal','Ferras','cferras9@northeastern.edu');
INSERT INTO "course_registration" VALUES ('5015','0119550695');
INSERT INTO "course_registration" VALUES ('5013','8563799754');
INSERT INTO "course_registration" VALUES ('5018','8806120557');
INSERT INTO "course_registration" VALUES ('5007','8806120557');
INSERT INTO "course_registration" VALUES ('5004','8237270940');
INSERT INTO "course_registration" VALUES ('5006','8043403414');
INSERT INTO "course_registration" VALUES ('5016','6095770688');
INSERT INTO "course_registration" VALUES ('5001','1641065885');
INSERT INTO "course_registration" VALUES ('5020','8825881940');
INSERT INTO "course_registration" VALUES ('5008','0788585320');
INSERT INTO "course_registration" VALUES ('5017','4440121012');
INSERT INTO "course_registration" VALUES ('5013','4526503541');
INSERT INTO "course_registration" VALUES ('5017','9904147876');
INSERT INTO "course_registration" VALUES ('5018','2033436675');
INSERT INTO "course_registration" VALUES ('5006','1337154784');
INSERT INTO "course_registration" VALUES ('5016','4370203791');
INSERT INTO "course_registration" VALUES ('5020','2867188628');
INSERT INTO "course_registration" VALUES ('5007','6201892753');
INSERT INTO "course_registration" VALUES ('5019','1337154784');
INSERT INTO "course_registration" VALUES ('5004','8237270940');
INSERT INTO "course_registration" VALUES ('5001','6416985012');
INSERT INTO "course_registration" VALUES ('5012','9904147876');
INSERT INTO "course_registration" VALUES ('5005','0119550695');
INSERT INTO "course_registration" VALUES ('5017','5088611110');
INSERT INTO "course_registration" VALUES ('5006','2867188628');
INSERT INTO "course_registration" VALUES ('5007','3091910954');
INSERT INTO "course_registration" VALUES ('5007','1337154784');
INSERT INTO "course_registration" VALUES ('5008','8806120557');
INSERT INTO "course_registration" VALUES ('5012','4526503541');
INSERT INTO "course_registration" VALUES ('5013','9477489972');
INSERT INTO "course_registration" VALUES ('5012','9477489972');
INSERT INTO "course_registration" VALUES ('5009','5599885054');
INSERT INTO "course_registration" VALUES ('5016','9904147876');
INSERT INTO "course_registration" VALUES ('5009','8237270940');
INSERT INTO "course_registration" VALUES ('5016','4526503541');
INSERT INTO "course_registration" VALUES ('5014','5088611110');
INSERT INTO "course_registration" VALUES ('5007','6222643884');
INSERT INTO "course_registration" VALUES ('5011','8825881940');
INSERT INTO "course_registration" VALUES ('5014','6095770688');
INSERT INTO "course_registration" VALUES ('5019','5993457864');
INSERT INTO "course_registration" VALUES ('5015','5599885054');
INSERT INTO "course_registration" VALUES ('5005','8563799754');
INSERT INTO "course_registration" VALUES ('5017','5275340869');
INSERT INTO "course_registration" VALUES ('5011','8655758671');
INSERT INTO "course_registration" VALUES ('5013','0282616853');
INSERT INTO "course_registration" VALUES ('5008','5196006834');
INSERT INTO "course_registration" VALUES ('5003','7972486867');
INSERT INTO "course_registration" VALUES ('5020','8615332339');
INSERT INTO "course_registration" VALUES ('5006','7357533646');
INSERT INTO "course_registration" VALUES ('5016','4240596505');
COMMIT;
