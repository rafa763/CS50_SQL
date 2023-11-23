CREATE TABLE IF NOT EXISTS "passengers" (
	"id" INTEGER,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	"age" INTEGER NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "check_ins" (
	"id" INTEGER,
	"passenger_id" INTEGER,
	"flight_id" INTEGER,
	"datetime" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id"),
	FOREIGN KEY("passenger_id") REFERENCES "passengers"("id"),
	FOREIGN KEY("flight_id") REFERENCES "flights"("id")

);

CREATE TABLE IF NOT EXISTS "airlines" (
	"id" INTEGER,
	"name" TEXT NOT NULL,
	"concourse" NOT NULL CHECK("concourse" IN ("A", "B", "C", "D", "E", "F", "T"))
);


CREATE TABLE IF NOT EXISTS "flights" (
        "id" INTEGER,
        "flight_number" TEXT NOT NULL,
        "airline_id" INTEGER,
        "from_code" TEXT NOT NULL,
        "to_code" TEXT NOT NULL,
        "departure_time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
        "arrival_time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
        PRIMARY KEY("id"),
        FOREIGN KEY("airline_id") REFERENCES "airlines"("id")

);
