SELECT "english_title" AS "Title", "contrast" AS "Contrast", "brightness" AS "Brightness"
FROM "views"
WHERE "english_title" LIKE '%H%'
AND "brightness" > 0.5
ORDER BY "contrast" ASC;
