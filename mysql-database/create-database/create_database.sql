create table book (
	book_id      int NOT NULL AUTO_INCREMENT,
	book_name    varchar(256),
	PRIMARY KEY (book_id)
);

create table types (
	type_id    int NOT NULL AUTO_INCREMENT,
	type_name  varchar(256),
	PRIMARY KEY (type_id)
);

drop table book_types

create table book_types (
	type_ref_id   int NOT NULL,
	book_ref_id   int NOT NULL,
	CONSTRAINT book_ref 
	    FOREIGN KEY (book_ref_id) 
	    REFERENCES BOOK(book_id),
	CONSTRAINT type_ref 
		FOREIGN KEY (type_ref_id) 
		REFERENCES types(type_id)
);
