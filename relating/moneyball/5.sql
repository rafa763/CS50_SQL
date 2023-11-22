SELECT DISTINCT("name") FROM "teams" AS "T"
JOIN "performances" AS "PR" ON "PR"."team_id" = "T"."id"
JOIN "players" AS "P" ON "P"."id" = "PR"."player_id"
WHERE "first_name" = 'Satchel' AND "last_name" = 'Paige';
