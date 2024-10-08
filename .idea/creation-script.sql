CREATE DATABASE NHLSalaryCapTracker;

USE NHLSalaryCapTracker;

CREATE TABLE Asset (
    id INTEGER PRIMARY KEY,
    round INTEGER,
    overall INTEGER,
    year INTEGER
);

CREATE TABLE Teams (
    id INTEGER PRIMARY KEY,
    team_name VARCHAR(100),
    location VARCHAR(100),
    division VARCHAR(100),
    total_cap_space DECIMAL(15, 2),
    current_cap_hit DECIMAL(15, 2),
    roster_size INTEGER
);

CREATE TABLE Person (
    id INTEGER PRIMARY KEY,
    nhl_id INTEGER UNIQUE,
    name VARCHAR(100),
    birthdate DATE,
    birthplace VARCHAR(100),
    nationality VARCHAR(50),
    position VARCHAR(10),
    height INTEGER,
    weight INTEGER,
    shoots VARCHAR(1),
    draft_pick INTEGER,
    arbitration BOOLEAN,
    waivers BOOLEAN,
    current_status VARCHAR(50),
    FOREIGN KEY(draft_pick) REFERENCES Asset(id)
);

CREATE TABLE Contracts (
    contract_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    player_id INTEGER,
    team_id INTEGER,
    start_date DATE,
    end_date DATE,
    contract_type VARCHAR(50),
    cap_hit DECIMAL(15, 2),
    FOREIGN KEY(player_id) REFERENCES Person(id),
    FOREIGN KEY(team_id) REFERENCES Teams(id)
);

CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    player_id INTEGER,
    team_id INTEGER,
    date DATE,
    transaction_type VARCHAR(50),
    details TEXT,
    FOREIGN KEY(player_id) REFERENCES Person(id),
    FOREIGN KEY(team_id) REFERENCES Teams(id)
);
