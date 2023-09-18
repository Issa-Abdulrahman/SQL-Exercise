BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "gradutes" (
	"id"	INTEGER,
	"name"	TEXT NOT NULL UNIQUE,
	"age"	INT,
	"gender"	TEXT,
	"points"	INT,
	"graduation"	date,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "students" ("ID","Name","Age","Gender","Points") VALUES (1,'Alex','21','M',199),
 (2,'Basma','25','F',301),
 (3,'Hasan','30','M',150),
 (5,'Robert','34','M',500),
 (6,'Jana','33','F',500),
 (100,'issa','27','M',250);
INSERT INTO "gradutes" ("id","name","age","gender","points","graduation") VALUES (1,'Layal',18,'F',350,'2018-09-08');
COMMIT;
