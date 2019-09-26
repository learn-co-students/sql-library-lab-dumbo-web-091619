-- SECOND:
-- * 2 series
-- * 2 sub-genres
-- * 2 authors
-- * 3 books in each series
-- * 8 characters
--   * 4 characters in each series
--     * of each of those 4, make 2 in all of the books in a series, and 2 in just
--       1 book in a series
-- * Note you will need to insert values into your character_books join table

-- * Feel free to make these up if you don't know any Fantasy series :)

-- * 2 series
INSERT INTO series (id, title, author_id, subgenre_id) VALUES
(1, "The Lord of the Rings", 1, 1),
(2, "The Dragonlance Chronicles", 2, 2);

-- * 2 sub-genres
INSERT INTO subgenres (id, name) VALUES
(1, "High Fantasy"),
(2, "Tabletop");

-- * 2 authors
INSERT INTO authors (id, name) VALUES
(1, "J.R.R. Tolkien"),
(2, "Margaret Weis & Tracy Hickman");

-- * 3 books in each series
INSERT INTO books (id, title, year, series_id) VALUES
(1, "The Fellowship of the Ring", 1954, 1),
(2, "The Two Towers", 1954, 1),
(3, "The Return of the King", 1955, 1),
(4, "Dragons of Autumn Twilight", 2002, 2),
(5, "Dragons of Winter Night", 1992, 2),
(6, "Dragons of Spring Dawning", 1994, 2);

-- * 8 characters
--   * 4 characters in each series
--     * of each of those 4, make 2 in all of the books in a series, and 2 in just
--       1 book in a series
-- * Note you will need to insert values into your character_books join table

INSERT INTO characters (id, name, motto, species, author_id) VALUES
(1, "Frodo", "I am glad you are here with me", "Hobbit", 1),
(2, "Sam", "Mr. Frodo!", "Hobbit", 1),
(3, "Boromir", "One does not simply walk into Mordor", "Human", 1),
(4, "Faramir", "I do not love the bright sword for its sharpness, nor the arrow for its swiftness, nor the warrior for his glory. I love only that which they defend.", "Human", 1),
(5, "Raistlin Majere", "I warned you,", "Human", 2),
(6, "Tasslehoff Burrfoot", "I'm bored", "Kender", 2),
(7, "Tanis Half-Elven", "It’s the sensible, logical thing to do, of course, which is whay we don’t do it.", "Elf", 2),
(8, "Kitiara uth Matar", "It’s what you do with the fear that counts.", "Human", 2);

INSERT INTO character_books (id, book_id, character_id) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 1, 3),
(8, 3, 4),
(9, 4, 5),
(10, 5, 5),
(11, 6, 5),
(12, 4, 6),
(13, 5, 6),
(14, 6, 6),
(15, 4, 7),
(16, 5, 8);