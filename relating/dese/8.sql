SELECT "pupils", "name" FROM "expenditures"
JOIN "districts" ON "districts"."id" = "expenditures"."district_id";
