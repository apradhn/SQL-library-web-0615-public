INSERT INTO series(title) VALUES
("A Song of Ice and Fire"),
("Harry Potter");

INSERT INTO books(title, year, series_id) VALUES
("A Game of Thrones", 1996, (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("A Clash of Kings", 1998, (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("A Storm of Swords", 2000, (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("Harry Potter and the Philosopher's Stone", 1997, (SELECT id FROM series WHERE title = "Harry Potter")),
("Harry Potter and the Chamber of Secrets", 1998, (SELECT id FROM series WHERE title = "Harry Potter")),
("Harry Potter and the Prisoner of Azkaban", 1999, (SELECT id FROM series WHERE title = "Harry Potter"));

INSERT INTO characters(name, species, motto, series_id) VALUES
("Eddard Stark", "Human", "Winter is coming.", (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("Arya Stark", "Human", "Valar morghulis.", (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("Tyrion Lannister", "Human", "A Lannister always pays his debts.", (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("Melisandre", "Human", "The night is dark and full of terrors.", (SELECT id FROM series WHERE title = "A Song of Ice and Fire")),
("Hermione Granger", "Human", "What. An. Idiot.", (SELECT id FROM series WHERE title = "Harry Potter")),
("Albus Dumbledore", "Human", "We must all face the choice between what is right, and what is easy.", (SELECT id FROM series WHERE title = "Harry Potter")),
("Luna Lovegood", "Human", "Things we lose have a way of coming back to us in the end, if not always in the way we expect.", (SELECT id FROM series WHERE title = "Harry Potter")),
("Severus Snape", "Human", "Turn to page 394.", (SELECT id FROM series WHERE title = "Harry Potter"));

INSERT INTO character_books (book_id, character_id) VALUES
((SELECT id FROM books WHERE title = "A Game of Thrones"), (SELECT id FROM characters WHERE name = "Arya Stark")),
((SELECT id FROM books WHERE title = "A Clash of Kings"), (SELECT id FROM characters WHERE name = "Arya Stark")),
((SELECT id FROM books WHERE title = "A Storm of Swords"), (SELECT id FROM characters WHERE name = "Arya Stark")),
((SELECT id FROM books WHERE title = "A Game of Thrones"), (SELECT id FROM characters WHERE name = "Tyrion Lannister")),
((SELECT id FROM books WHERE title = "A Clash of Kings"), (SELECT id FROM characters WHERE name = "Tyrion Lannister")),
((SELECT id FROM books WHERE title = "A Storm of Swords"), (SELECT id FROM characters WHERE name = "Tyrion Lannister")),
((SELECT id FROM books WHERE title = "A Game of Thrones"), (SELECT id FROM characters WHERE name = "Eddard Stark")),
((SELECT id FROM books WHERE title = "A Clash of Kings"), (SELECT id FROM characters WHERE name = "Melisandre")),
((SELECT id FROM books WHERE title = "Harry Potter and the Philosopher's Stone"), (SELECT id FROM characters WHERE name = "Hermione Granger")),
((SELECT id FROM books WHERE title = "Harry Potter and the Chamber of Secrets"), (SELECT id FROM characters WHERE name = "Hermione Granger")),
((SELECT id FROM books WHERE title = "Harry Potter and the Prisoner of Azkaban"), (SELECT id FROM characters WHERE name = "Hermione Granger")),
((SELECT id FROM books WHERE title = "Harry Potter and the Philosopher's Stone"), (SELECT id FROM characters WHERE name = "Albus Dumbledore")),
((SELECT id FROM books WHERE title = "Harry Potter and the Chamber of Secrets"), (SELECT id FROM characters WHERE name = "Albus Dumbledore")),
((SELECT id FROM books WHERE title = "Harry Potter and the Prisoner of Azkaban"), (SELECT id FROM characters WHERE name = "Albus Dumbledore")),
((SELECT id FROM books WHERE title = "Harry Potter and the Prisoner of Azkaban"), (SELECT id FROM characters WHERE name = "Severus Snape")),
((SELECT id FROM books WHERE title = "Harry Potter and the Chamber of Secrets"), (SELECT id FROM characters WHERE name = "Luna Lovegood"));
 

INSERT INTO subgenres(name) VALUES
("Epic Fantasy"),
("Contemporary Fantasy");

INSERT INTO authors(name) VALUES
("George R.R. Martin"),
("J.K. Rowling");