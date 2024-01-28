-- create.sql
CREATE DATABASE app_db_dev;
-- Create the teams table
CREATE TABLE IF NOT EXISTS teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create the pokemons table
CREATE TABLE IF NOT EXISTS pokemons (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    team_id INTEGER REFERENCES teams(id) ON DELETE CASCADE
);

