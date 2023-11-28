CREATE VIEW "frequently_reviewed" AS
SELECT 
	"L"."id",
	"property_type",
	"host_name",
	COUNT("R"."comments") AS "reviews"
FROM "listings" AS "L"
JOIN "reviews" AS "R" ON "L"."id" = "R"."listing_id"
GROUP BY "L"."id"
ORDER BY "reviews" DESC, "property_type", "host_name"
LIMIT 100;
