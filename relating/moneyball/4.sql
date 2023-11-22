SELECT "first_name", "last_name", "salary" FROM "salaries" AS "S"
JOIN "players" AS "P" ON "S"."player_id" = "P"."id"
WHERE "year" = 2001
ORDER BY "salary" ASC, "first_name" ASC, "last_name" ASC, "P"."id" ASC
LIMIT 50;
