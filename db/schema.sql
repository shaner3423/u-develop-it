DROP TABLE IF EXISTS candidates;
DROP TABLE IF EXIST parties;

CREATE TABLE parties (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL 
);

CREATE TABLE candidates (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    industry_connected BOOLEAN NOT NULL, party_id INTEGER,
    CONSTRAINT fk_party FOREIGN KEY (party_id) REFERENCES parties (ID) ON DELETE SET NULL
);