ALTER TABLE Contracts
ADD PRIMARY KEY (player_id, team_id);

DELETE FROM Transactions
WHERE player_id IS NULL OR origin_team_id IS NULL;

ALTER TABLE Transactions
ADD PRIMARY KEY (player_id, origin_team_id, destination_team_id);



ALTER TABLE Person
ADD COLUMN first_name VARCHAR(50),
ADD COLUMN middle_name VARCHAR(50),  -- Using NULL for no middle name
ADD COLUMN last_name VARCHAR(50);

UPDATE Person
SET first_name = SUBSTRING_INDEX(name, ' ', 1),
    last_name = SUBSTRING_INDEX(name, ' ', -1),
    middle_name = TRIM(SUBSTR(name, LENGTH(SUBSTRING_INDEX(name, ' ', 1)) + 2, 
                              LENGTH(name) - LENGTH(SUBSTRING_INDEX(name, ' ', -1)) - LENGTH(SUBSTRING_INDEX(name, ' ', 1)) - 1));

ALTER TABLE Person
DROP COLUMN name;



DELETE FROM Assets
WHERE round = 2 AND original_team_id = 26 AND current_team_id = 26; -- Team 26 mistakenly given two round 2 draft picks when entering data previously

ALTER TABLE Assets
ADD PRIMARY KEY (original_team_id, round, year);