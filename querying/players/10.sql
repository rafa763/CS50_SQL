SELECT "first_name", "last_name", ("weight" + "height") AS "Weight & Height" FROM "players"
WHERE "birth_state" = 'NY'
ORDER BY "final_game";
