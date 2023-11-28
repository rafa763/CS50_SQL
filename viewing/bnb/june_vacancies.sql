CREATE VIEW "june_vacancies" AS
SELECT
	"L"."id",
	"property_type",
	"host_name",
	COUNT("A"."id") AS "days_vacant"
FROM "listings" AS "L"
JOIN "availabilities" AS "A" ON "L"."id" = "A"."listing_id"
WHERE "date" BETWEEN '2023-06-01' AND '2023-06-31'
AND "available" = 'TRUE'
GROUP BY "L"."id";
