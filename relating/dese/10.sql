SELECT "name", "per_pupil_expenditure" FROM "expenditures" AS "E"
JOIN "districts" AS "D" ON "D"."id" = "E"."district_id"
WHERE "type" = 'Public School District'
ORDER BY "per_pupil_expenditure" DESC LIMIT 10; 
