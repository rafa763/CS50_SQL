-- select all the data in the table
SELECT "evaluated", "exemplary", "proficient", "needs_improvement", "unsatisfactory",
"pupils", "per_pupil_expenditure", "graduated", "dropped", "excluded", "S"."name",
"D"."name" FROM "staff_evaluations" AS "SE"
JOIN "districts" AS "D" ON "D"."id" = "SE"."district_id"
JOIN "expenditures" AS "E" ON "D"."id" = "E"."district_id"
JOIN "schools" AS "S" ON "D"."id" = "S"."district_id"
JOIN "graduation_rates" AS "G" ON "S"."id" = "G"."school_id";
