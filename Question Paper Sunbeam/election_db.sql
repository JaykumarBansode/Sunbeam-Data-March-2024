-- database schema for election application
create database election_db;
use election_db;

-- voter table
CREATE TABLE voter(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    email VARCHAR(25) NOT NULL UNIQUE,
    password VARCHAR(25) NOT NULL
);
 INSERT INTO voter (name, email, password) VALUES
 ('Priya', 'priya@gmail.com', 'priya123'),
 ('Vrushabh', 'Vru@gmail.com', 'vru123'),
('Jyoti', 'jyoti@gmail.com', 'jyoti123');


-- candidate table
CREATE TABLE candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    party VARCHAR(255) NOT NULL
    );

insert into candidate values(default,'Aditya','KD1');
insert into candidate values(default,'Shubham','KD2');
insert into candidate values(default,'Kisan','KD3');
insert into candidate values(default,'Shantanu','KD4');


-- votes table
CREATE TABLE votes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    voter_id INT NOT NULL,
    candidate_id INT NOT NULL,
    FOREIGN KEY (voter_id) REFERENCES voter(id),
    FOREIGN KEY (candidate_id) REFERENCES candidate(id)
);







