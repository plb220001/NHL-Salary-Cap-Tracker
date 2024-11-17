-- View to see players that have a cap hit over $8,000,000
CREATE VIEW HighSalaryPlayers AS
SELECT
    p.person_id,
    p.first_name,
    p.last_name,
    t.team_name,
    c.cap_hit
FROM
    Players pl
JOIN
    Person p ON pl.player_id = p.person_id
JOIN
    Contracts c ON pl.player_id = c.player_id
JOIN
    Teams t ON c.team_id = t.team_id
WHERE
    c.cap_hit > 8000000;

-- View to see goalies that have a cap hit over $6,000,000
-- Works as a template for any position.
CREATE VIEW HighSalaryGoalies AS
SELECT
    p.person_id,
    p.first_name,
    p.last_name,
    t.team_name,
    c.cap_hit
FROM
    Players pl
JOIN
    Person p ON pl.player_id = p.person_id
JOIN
    Contracts c ON pl.player_id = c.player_id
JOIN
    Teams t ON c.team_id = t.team_id
WHERE
    pl.position = 'G' AND c.cap_hit > 6000000;

-- View to see transactions from the last 6 months
CREATE VIEW RecentTransactions AS
SELECT
    p.person_id,
    p.first_name,
    p.last_name,
    tr.transaction_date,
    tr.transaction_type,
    t1.team_name AS origin_team,
    t2.team_name AS destination_team
FROM
    Transactions tr
JOIN
    Person p ON tr.player_id = p.person_id
JOIN
    Teams t1 ON tr.origin_team_id = t1.team_id
JOIN
    Teams t2 ON tr.destination_team_id = t2.team_id
WHERE
    tr.transaction_date >= CURDATE() - INTERVAL 180 DAY;