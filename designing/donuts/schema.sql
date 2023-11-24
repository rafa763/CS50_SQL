CREATE TABLE IF NOT EXISTS "ingredients" (
	"id" INTEGER,
	"name" TEXT NOT NULL,
	"unit_price" INTEGER NOT NULL,
	"unit" TEXT NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "donuts" (
	"id" INTEGER,
	"name" TEXT NOT NULL,
	"gluten_free" INTEGER CHECK("gluten_free" IN (0, 1)),
	"price" INTEGER NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "donut_ingredients" (
	"id" INTEGER,
	"donut_id" INTEGER,
	"ingredient_id" INTEGER,
	PRIMARY KEY("id"),
	FOREIGN KEY("donut_id") REFERENCES "donuts"("id"),
	FOREIGN KEY("ingredient_id") REFERENCES "ingredients"("id")
);


CREATE TABLE IF NOT EXISTS "orders" (
	"id" INTEGER,
	"order_number" TEXT NOT NULL,
	"customer_id" INTEGER,
	"order_time" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id"),
	FOREIGN KEY("customer_id") REFERENCES "customers"("id")
);

CREATE TABLE IF NOT EXISTS "customers" (
	"id" INTEGER,
	"first_name" TEXT NOT NULL,
	"last_name" TEXT NOT NULL,
	PRIMARY KEY("id")
);

CREATE TABLE IF NOT EXISTS "customer_orders" (
	"id" INTEGER,
	"order_id" INTEGER,
	"donut_id" INTEGER,
	"quantity" INTEGER NOT NULL,
	PRIMARY KEY("id"),
	FOREIGN KEY("order_id") REFERENCES "orders"("id"),
	FOREIGN KEY("donut_id") REFERENCES "donuts"("id")
);
