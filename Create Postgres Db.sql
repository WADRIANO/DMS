# You can do this using the createdb command or a PostgreSQL client such as psql.
createdb your_database_name
#connect to the db
psql -U your_username -d your_database_name
#Within the database, create a new schema to organize your tables.
CREATE SCHEMA music_catalog;
#create tables:
-- Users Table
CREATE TABLE music_catalog.users (
    user_id serial PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) NOT NULL
);

-- Music Albums & Tracks Table
CREATE TABLE music_catalog.albums (
    album_id serial PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    release_date DATE,
    genre VARCHAR(50)
);

CREATE TABLE music_catalog.tracks (
    track_id serial PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration TIME,
    album_id INT REFERENCES music_catalog.albums(album_id)
);

-- Rightsholders Table
CREATE TABLE music_catalog.rightsholders (
    rightsholder_id serial PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Rightsholders Organization Table
CREATE TABLE music_catalog.rightsholders_organization (
    org_id serial PRIMARY KEY,
    org_name VARCHAR(100) NOT NULL
);

#Set appropriate permissions on the schema and tables to define administrative, write, and read-only privileges for users
GRANT ALL PRIVILEGES ON SCHEMA music_catalog TO admin_user;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA music_catalog TO write_user;
GRANT SELECT ON ALL TABLES IN SCHEMA music_catalog TO read_user;

#To model compilation albums or track changes in ownership, you can create additional tables and relationships as needed. 
#For example, you can create a table to track ownership changes with a timestamp and reference the album or track being transferred, 
#maybe using a trigger on insert or update or Stored procedures
