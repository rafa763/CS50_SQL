/*
SELECT "first_name", "last_name", ("salaries"."salary" / "H") AS "SH", ("salaries"."salary" / "RBI") AS "SRBI" FROM "players"
JOIN "performances" ON "performances"."player_id" = "players"."id"
JOIN "salaries" ON "salaries"."player_id" = "players"."id"
WHERE "H" <> 0 AND "RBI" <> 0 AND "performances"."year" = 2001
AND "performances"."year" = "salaries"."year"
GROUP BY ("salaries"."salary" / "H") ,  ("salaries"."salary" / "RBI") 
ORDER BY "players"."id"
;
*/
