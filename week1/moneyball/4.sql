SELECT players.first_name, players.last_name, salaries.salary
FROM salaries
JOIN players
    ON players.id = salaries.player_id
WHERE year = 2001
ORDER BY salary ASC,
         first_name ASC,
         last_name ASC,
         players.id ASC
LIMIT 50;
