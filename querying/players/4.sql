SELECT "first_name", "last_name" FROM "players"
WHERE "birth_country" IS NOT 'USA' AND "birth_country" IS NOT NULL
ORDER BY "first_name", "last_name";
