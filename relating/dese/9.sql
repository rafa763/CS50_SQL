SELECT "name" FROM "expenditures"
JOIN "districts" ON "districts"."id" = "expenditures"."district_id"
ORDER BY "pupils" ASC LIMIT 1;
