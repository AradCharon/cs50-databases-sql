SELECT first_name, last_name
FROM
(
    SELECT first_name, last_name, id
    FROM
    (
        SELECT players.first_name,
               players.last_name,
               players.id
        FROM players
        JOIN salaries
            ON players.id = salaries.player_id
           AND salaries.year = 2001
        JOIN performances
            ON players.id = performances.player_id
           AND performances.year = 2001
        WHERE performances.H > 0
        ORDER BY salaries.salary / performances.H ASC
        LIMIT 10
    )

    INTERSECT

    SELECT first_name, last_name, id
    FROM
    (
        SELECT players.first_name,
               players.last_name,
               players.id
        FROM players
        JOIN salaries
            ON players.id = salaries.player_id
           AND salaries.year = 2001
        JOIN performances
            ON players.id = performances.player_id
           AND performances.year = 2001
        WHERE performances.RBI > 0
        ORDER BY salaries.salary / performances.RBI ASC
        LIMIT 10
    )
)
ORDER BY id ASC;
