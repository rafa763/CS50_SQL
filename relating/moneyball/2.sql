SELECT "year", "salary" FROM "salaries" AS "S"
JOIN "players" AS "P" ON "P"."id" = "S"."player_id"
WHERE "first_name" = 'Cal' AND "last_name" = 'Ripken'
ORDER BY "year" DESC;
