BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "student" (
	"nuid"	TEXT NOT NULL UNIQUE,
	"first_name"	TEXT NOT NULL,
	"last_name"	TEXT NOT NULL,
	"university_email"	TEXT,
	PRIMARY KEY("nuid")
);
CREATE TABLE IF NOT EXISTS "course_registration" (
	"course_id"	TEXT,
	"nuid"	TEXT
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