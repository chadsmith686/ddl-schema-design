-- PART 1 - MEDICAL CENTER:

CREATE DATABASE medical_center;

CREATE TABLE doctors {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(10),
    specialty VARCHAR(20)
};

CREATE TABLE visits {
    ID SERIAL PRIMARY KEY,
    doctor_id INTEGER,
    patient_id INTEGER,
    date
};

CREATE TABLE visits {
    ID SERIAL PRIMARY KEY,
    name TEXT,
    insurance TEXT,
    birthday VARCHAR(10)  
};

CREATE TABLE diseases {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(30),
    description TEXT
}

CREATE TABLE diagnoses {
    ID SERIAL PRIMARY KEY,
    visit_id INTEGER,
    disease_id INTEGER,
    notes TEXT
}

-- PART 2 - CRAIGSLIST 

CREATE DATABASE craigslist;

CREATE TABLE regions {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(20)
};

CREATE TABLE posts {
    ID SERIAL PRIMARY KEY,
    title TEXT,
    text VARCHAR(30),
    location VARCHAR(20),
    user_id INTEGER,
    region_ID INTEGER,
    category_id INTEGER
};

CREATE TABLE users {
    ID SERIAL PRIMARY KEY,
    username VARCHAR(20),
    encrypted_password VARCHAR(50),
    preferred_region_id INTEGER
};

CREATE TABLE categories {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(20)
};

-- PART 3: Soccer Leagues 

CREATE DATABASE soccer_leagues 

CREATE TABLE teams {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(20),
    city VARCHAR(20)
};

CREATE TABLE players {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(20),
    players VARCHAR(20),
    height FLOAT,
    current_team_id INTEGER
};

CREATE TABLE goals {
    ID SERIAL PRIMARY KEY,
    player_id INTEGER,
    match_id INTEGER
};

CREATE TABLE referees {
    ID SERIAL PRIMARY KEY,
    name VARCHAR(20)
};

CREATE TABLE matches {
    ID SERIAL PRIMARY KEY,
    home_team_id INTEGER,
    away_team_id INTEGER,
    location VARCHAR(20),
    date,
    start_time VARCHAR(5),
    season_id INTEGER,
    head_referee_id INTEGER,
    assistent_referee_id_1 INTEGER,
    assistent_referee_id_2 INTEGER,
};

CREATE TABLE lineups {
    ID SERIAL PRIMARY KEY,
    player_id INTEGER,
    match_id INTEGER,
    team_id INTEGER,
};

CREATE TABLE results {
    ID SERIAL PRIMARY KEY,
    team_id INTEGER,
    match_id INTEGER,
};

CREATE TABLE season {
    ID SERIAL PRIMARY KEY,
    start_date INTEGER,
    end_date INTEGER
};
