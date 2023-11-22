SELECT "first_name", "last_name", "salaries"."salary", "HR", "performances"."year" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "performances"."year" = "salaries"."year"
ORDER BY "players"."id", "salaries"."year" DESC, "HR" DESC, "salaries"."year" DESC;
