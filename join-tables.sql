CREATE TABLE
    teams (
        id INT PRIMARY KEY,
        -- Unique identifier for each team
        team VARCHAR(100) NOT NULL,
        -- Team name (required)
        city VARCHAR(100) NOT NULL -- City where team is based
    );

CREATE TABLE
    players (
        id INT PRIMARY KEY,
        -- Unique player ID
        team_id INT REFERENCES teams (id),
        -- Foreign key linking player to teams table
        player VARCHAR(100) NOT NULL,
        -- Player name
        role VARCHAR(100) NOT NULL -- Player role/position
    );

INSERT INTO
    teams (id, team, city)
VALUES
    (1, 'Lions', 'Rome'),
    (2, 'Owls', 'Oslo'),
    (3, 'Bears', 'Bern'),
    (4, 'Sharks', 'Lima');

INSERT INTO
    players (id, team_id, player, role)
VALUES
    (1, 1, 'Ava', 'Guard'),
    (2, 1, 'Noah', 'Wing'),
    (3, 2, 'Emma', 'Back'),
    (4, NULL, 'Liam', 'Guard'),
    (5, NULL, 'Mia', 'Wing');

--SELECT TEAMS
SELECT
    *
FROM
    teams;

--SELECT PLAYERS
SELECT
    *
FROM
    players;

--INNNER JOIN TEAMS AND PLAYERS
SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
    INNER JOIN players ON teams.id = players.team_id;

--LEFT JOIN TEAMS AND PLAYERS
SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
    LEFT JOIN players ON teams.id = players.team_id;

--LEFT ANTI JOIN
SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
    RIGHT JOIN players ON teams.id = players.team_id;

--LEFT ANTI JOIN
SELECT
    teams.id AS team_id,
    teams.team,
    teams.city
FROM
    teams
    LEFT JOIN players ON teams.id = players.team_id
WHERE
    players.team_id IS NULL;

--RIGHT ANTI JOIN
SELECT
    players.id AS player_id,
    players.player,
    players.role
FROM
    teams
    RIGHT JOIN players ON teams.id = players.team_id
WHERE
    teams.id IS NULL;

--FULL OUTER JOIN
SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
    FULL OUTER JOIN players ON teams.id = players.team_id;

--FULL JOIN 
SELECT
    teams.id AS team_id,
    team,
    city,
    players.id AS player_id,
    player,
    role
FROM
    teams
FULL JOIN players ON teams.id = players.team_id
WHERE
    teams.id IS NULL
    OR players.team_id IS NULL
    ORDER BY team_id, player_id;