/* Create table about the people and what they do here */
-- In this project, you’re going to make your own table with some small 
-- set of “famous people”, then make more tables about things they do 
-- and join those to create nice human readable lists.

-- For example, here are types of famous people and the questions your 
-- data could answer:

-- Authors: What books did they write?
-- Fictional characters: How are they related to other characters? 
-- What books do they show up in?

CREATE TABLE writers(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

INSERT INTO writers (name) VALUES ('J K Rowling');
INSERT INTO writers (name) VALUES ('Robin Hobb');
INSERT INTO writers (name) VALUES ('Cornelia Funke');
INSERT INTO writers (name) VALUES ('Leigh Barduo');
INSERT INTO writers (name) VALUES ('V E Schwab');

CREATE TABLE books(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    author_id INTEGER,
    book TEXT
);

INSERT INTO books (author_id, book) VALUES (1,"Philosopher's stone");
INSERT INTO books (author_id, book) VALUES (1,"Chamber of Secrets");
INSERT INTO books (author_id, book) VALUES (1,"Prisoner of Azkaban");
INSERT INTO books (author_id, book) VALUES (1,'Goblet of Fire');
INSERT INTO books (author_id, book) VALUES (1,'Order of Phoeix');
INSERT INTO books (author_id, book) VALUES (1,'Half Blood Prince');
INSERT INTO books (author_id, book) VALUES (1,"Deathly Hallows");
INSERT INTO books (author_id, book) VALUES (2,"Assasin's Apprentice");
INSERT INTO books (author_id, book) VALUES (2,"Royal Assasin");
INSERT INTO books (author_id, book) VALUES (2,"Assasin's Quest");
INSERT INTO books (author_id, book) VALUES (3,"Dragon Rider");
INSERT INTO books (author_id, book) VALUES (3,"The Thief Lord");
INSERT INTO books (author_id, book) VALUES (3,"Reckless");
INSERT INTO books (author_id, book) VALUES (3,"Fearless");
INSERT INTO books (author_id, book) VALUES (3,"The Golden Yarn");
INSERT INTO books (author_id, book) VALUES (3,"Inkheart");
INSERT INTO books (author_id, book) VALUES (3,"Inkspell");
INSERT INTO books (author_id, book) VALUES (3,"Inkdeath");
INSERT INTO books (author_id, book) VALUES (4, 'Six of Crows');
INSERT INTO books (author_id, book) VALUES (5, 'The Invisible Life of Addie LaRue');



SELECT * FROM writers;
SELECT * FROM books;

SELECT books.book, writers.name FROM books
    JOIN writers
    ON writers.id = books.author_id;
    