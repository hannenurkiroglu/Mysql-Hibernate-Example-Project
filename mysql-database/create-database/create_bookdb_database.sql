create table books (
	book_id      int NOT NULL AUTO_INCREMENT,
	book_name    varchar(256),
	PRIMARY KEY (book_id)
);

CREATE table authors (
	author_id    int NOT NULL AUTO_INCREMENT,
	author_name  varchar(256),
	PRIMARY KEY (author_id)
);

CREATE table book_author (
	book_id   INT NOT NULL, 
  	author_id INT NOT NULL, 
  	PRIMARY KEY(book_id, author_id), 
  	CONSTRAINT fk_book 
    	FOREIGN KEY(book_id) 
    	REFERENCES books(book_id) ON DELETE CASCADE, 
  	CONSTRAINT fk_author 
    	FOREIGN KEY(author_id) 
    	REFERENCES authors(author_id) ON DELETE CASCADE
);

INSERT INTO books (book_name) values ('Altıncı Koğuş');
INSERT INTO books (book_name) values ('Martin Eden');
INSERT INTO books (book_name) values ('Kızıl Veba');
INSERT INTO books (book_name) values ('Gurur ve Önyargı');
INSERT INTO books (book_name) values ('Uğultulu Tepeler');
INSERT INTO books (book_name) values ('Amok Koşucusu');
INSERT INTO books (book_name) values ('Ay Işığı Sokağı');
INSERT INTO authors (author_name) values ('Anton Çehov');
INSERT INTO authors (author_name) values ('Jack London');
INSERT INTO authors (author_name) values ('Jane Austen');
INSERT INTO authors (author_name) values ('Emily Bronte');
INSERT INTO authors (author_name) values ('Stefan Zweig');
INSERT INTO book_author (book_id, author_id) values (1, 1);
INSERT INTO book_author (book_id, author_id) values (2, 2);
INSERT INTO book_author (book_id, author_id) values (3, 2);
INSERT INTO book_author (book_id, author_id) values (4, 3);
INSERT INTO book_author (book_id, author_id) values (5, 4);
INSERT INTO book_author (book_id, author_id) values (6, 5);
INSERT INTO book_author (book_id, author_id) values (7, 5);
select * from authors
select * from books
select * from book_author
