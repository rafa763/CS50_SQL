SELECT "schools"."name" FROM "schools"
JOIN "districts" ON "schools"."district_id" = "districts"."id"
WHERE "schools"."city" = 'Cambridge'
AND "schools"."type" = 'Public School';
