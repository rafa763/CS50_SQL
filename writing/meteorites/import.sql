.mode csv
.import meteorites.csv temp

DELETE FROM "temp" WHERE "nametype" = 'Relict';

UPDATE "temp" SET "mass" = NULL WHERE "mass" = '' OR "mass" = '0.0' OR "mass" IS NULL;
UPDATE "temp" SET "year" = NULL WHERE "year" = '' OR "year" IS NULL;
UPDATE "temp" SET "lat" = NULL WHERE "lat" = '' OR "lat" = '0.0' OR "lat" IS NULL;
UPDATE "temp" SET "long" = NULL WHERE "long" = '' OR "long" = '0.0' OR "lat" IS NULL;

UPDATE "temp" SET "mass" = ROUND("mass", 2);
UPDATE "temp" SET "year" = ROUND("year", 2);
UPDATE "temp" SET "lat" = ROUND("lat", 2);
UPDATE "temp" SET "long" = ROUND("long", 2);

CREATE TABLE IF NOT EXISTS "meteorites" (
        "id" INTEGER,
        "name" TEXT,
        "class" TEXT,
        "mass" REAL,
        "discovery" TEXT,
        "year" INTEGER,
        "lat" REAL,
        "long" REAL,
        PRIMARY KEY("id")
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long" FROM "temp"
ORDER BY "year" ASC, "name" ASC;

DROP TABLE "temp";
