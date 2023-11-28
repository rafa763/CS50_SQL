CREATE VIEW "available" AS
SELECT
	"L"."id",
	"property_type",
	"host_name",
	"date"
FROM "listings" AS "L"
JOIN "availabilities" AS "A" ON "L"."id" = "A"."listing_id"
WHERE "available" = 'TRUE';
