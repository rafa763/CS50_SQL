SELECT "city", COUNT("name") AS "school no" FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city" HAVING "school no" <= 3
ORDER BY "school no" DESC, "city" ASC;
