SELECT "topic"
FROM "episodes"
WHERE "season" = 7
AND "topic" IS NOT NULL
AND "topic" LIKE 'M%';
