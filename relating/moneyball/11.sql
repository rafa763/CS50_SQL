SELECT "first_name", "last_name", ("salaries"."salary" / "H") AS "dollars per hit" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "H" <> 0 AND "performances"."year" = 2001
AND "performances"."year" = "salaries"."year"
ORDER BY "dollars per hit", "first_name", "last_name"
LIMIT 10;
