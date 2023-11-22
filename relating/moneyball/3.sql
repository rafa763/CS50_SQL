SELECT "year", "HR" FROM "performances" AS "PR"
JOIN "players" AS "P" ON "PR"."player_id" = "P"."id"
WHERE "first_name" = 'Ken' AND "last_name" = 'Griffey' AND "birth_year" = 1969
ORDER BY "year" DESC;
