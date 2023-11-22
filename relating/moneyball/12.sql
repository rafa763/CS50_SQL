SELECT "first_name", "last_name" FROM "players"
WHERE "players"."id" IN (
	SELECT "players"."id" FROM "players"
	JOIN "salaries" ON "players"."id" = "salaries"."player_id"
	JOIN "performances" ON "players"."id" = "performances"."player_id"
	WHERE "salaries"."year" = '2001' AND "H" > 0
	AND "performances"."year" = "salaries"."year"
	ORDER BY ("salary" / "H"), "first_name", "last_name"
	LIMIT 10
)
AND "players"."id" IN (
	SELECT "players"."id" FROM "players"
	JOIN "salaries" ON "players"."id" = "salaries"."player_id"
	JOIN "performances" ON "players"."id" = "performances"."player_id"
	WHERE "salaries"."year" = '2001' AND "RBI" > 0
	AND "performances"."year" = "salaries"."year"
	ORDER BY ("salary" / "RBI"), "first_name", "last_name"
	LIMIT 10
)
ORDER BY "last_name";
