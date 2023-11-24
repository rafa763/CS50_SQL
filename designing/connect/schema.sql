CREATE TABLE IF NOT EXISTS "users" (
	"id" INTEGER,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"username" TEXT NOT NUlL UNIQUE,
	"password" TEXT NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "education" (
	"id" INTEGER,
	"name" TEXT NOT NULL UNIQUE,
       	"type" TEXT NOT NULL,
	"location" TEXT NOT NULL,
	"founded_at" NUMERIC NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "companies" (
	"id" INTEGER,
	"name" TEXT NOT NULL,
	"industry" TEXT NOT NULL,
	"location" TEXT NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "user_connections" (
	"id" INTEGER,
	"follower_id" INTEGER,
	"following_id" INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY("follower_id") REFERENCES "users"("id"),
	FOREIGN KEY("following_id") REFERENCES "users"("id")
);

CREATE TABLE IF NOT EXISTS "education_connections" (
	"id" INTEGER,
	"student_id" INTEGER,
	"start_affiliation" NUMERIC NOT NUlL,
	"end_affiliation" NUMERIC NOT NUlL,
	"type" TEXT NOT NUlL,
	PRIMARY KEY("id"),
	FOREIGN KEY("student_id") REFERENCES "users"("id")
);

CREATE TABLE IF NOT EXISTS "company_connections" (
	"id" INTEGER,
	"employee_id" INTEGER,
	"start_affiliation" NUMERIC NOT NUlL,
	"end_affiliation" NUMERIC NOT NUlL,
	"title" TEXT NOT NUlL,
	PRIMARY KEY("id"),
	FOREIGN KEY("employee_id") REFERENCES "users"("id")
);
