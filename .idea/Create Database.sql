CREATE DATABASE NHLSalaryCapTracker;

USE NHLSalaryCapTracker;

-- Composite (maybe multivalued?) attribute of location represented as city, state, and nation.
CREATE TABLE Locations (
       location_id INTEGER PRIMARY KEY AUTO_INCREMENT,
       city VARCHAR(100),
       state VARCHAR(100),
       nation VARCHAR(100),
       UNIQUE(city, state, nation)
);

-- Table contains information on teams and their current cap used.
CREATE TABLE Teams (
    team_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    location INTEGER,
    team_name VARCHAR(100) UNIQUE,
    division VARCHAR(100),
    cap_space DECIMAL(15, 2),
    cap_hit DECIMAL(15, 2),
    roster_size INTEGER,
    FOREIGN KEY(location) REFERENCES Locations(location_id)
);

-- Superclass. Table contains basic information of players and coaches.
CREATE TABLE Person (
    person_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    birthdate DATE,
    nationality VARCHAR(50)
);

-- Subclass of person. Table contains information on players.
CREATE TABLE Players (
    player_id INTEGER PRIMARY KEY,
    position VARCHAR(10),
    number INTEGER,
    height INTEGER,
    weight INTEGER,
    FOREIGN KEY(player_id) REFERENCES Person(person_id)
);

-- Subclass of person. Table contains information on team coaches.
CREATE TABLE Coaches (
    coach_id INTEGER PRIMARY KEY,
    team_id INTEGER,
    role VARCHAR(50),
    FOREIGN KEY(coach_id) REFERENCES Person(person_id),
    FOREIGN KEY(team_id) REFERENCES Teams(team_id)
);

-- Table contains contract information between players and teams.
CREATE TABLE Contracts (
    player_id INTEGER,
    team_id INTEGER,
    cap_hit DECIMAL(15, 2),
    FOREIGN KEY(player_id) REFERENCES Players(player_id),
    FOREIGN KEY(team_id) REFERENCES Teams(team_id)
);

-- Table contains information for future draft picks held by teams. These assets are used in acquiring new players as well as in trading current players.
CREATE TABLE Assets (
    round INTEGER, 
    year INTEGER,
    original_team_id INTEGER,
    current_team_id INTEGER,
    FOREIGN KEY(original_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY(current_team_id) REFERENCES Teams(team_id)
);

-- Table contains information on trades between teams.
CREATE TABLE Transactions (
    player_id INTEGER,
    origin_team_id INTEGER,
    destination_team_id INTEGER,
    transaction_date DATE,
    transaction_type VARCHAR(50),
    FOREIGN KEY(player_id) REFERENCES Players(player_id),
    FOREIGN KEY(origin_team_id) REFERENCES Teams(team_id),
    FOREIGN KEY(destination_team_id) REFERENCES Teams(team_id)
);