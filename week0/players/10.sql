SELECT
    "first_name",
    "last_name",
    "height" AS "Height (inches)"
FROM "players"
WHERE "birth_country" = 'USA'
AND "height" >= 66
ORDER BY "height" DESC, "first_name", "last_name";
