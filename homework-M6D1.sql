-- Table, Create Books and Authors Table  
DROP TABLE IF EXISTS public.authors;

CREATE TABLE
	IF NOT EXISTS
		authors(
				id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
				name VARCHAR NOT NULL,
				last_name VARCHAR NOT NULL,
				birth_year INTEGER NOT NULL,
				country VARCHAR NOT NULL
		);


DROP TABLE IF EXISTS public.books;

CREATE TABLE
	IF NOT EXISTS
		books(	
				id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
				name VARCHAR NOT NULL,
				category VARCHAR NOT NULL,
				cover VARCHAR NOT NULL,
				author VARCHAR NOT NULL,
				published_at DATE NOT NULL,
				created_at TIMESTAMP DEFAULT NOW(),
				updated_at TIMESTAMP DEFAULT NOW()
		);

-- Insert Authors, Top 10 Most Successful Authors in The World:
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Dan','Brown',1964,'USA');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Agatha','Christie',1890,'UK');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Paulo','Coelho',1947,'Brazil');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Ken','Follett',1949,'UK');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('John','Grisham',1955,'USA');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Stephen','King',1947,'USA');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('Haruki','Murakami',1949,'Japan');
INSERT INTO public.authors(name,last_name,birth_year,country) VALUES('James','Patterson',1947,'USA');

-- Insert Books, For each Author add at least 3 famous books of the author.

-- 3 Brown
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Da Vinci Code','mystery thriller','https://images-na.ssl-images-amazon.com/images/I/61voOxiNf9L.jpg','Dan Brown','2003-03-18');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Angels and Demons','mystery thriller','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj8XUReijor_2XAJnJ26i1_-J8bxbnEWXE6CYTOuEwjczu8wSl','Dan Brown','2000-05-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Lost Symbol','mystery thriller','https://images-na.ssl-images-amazon.com/images/I/71X1p4TGlxL.jpg','Dan Brown','2009-09-15');
-- 5 Christie
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Murder on the Orient Express','Crime','https://images-na.ssl-images-amazon.com/images/I/51H9A6DHe3S._SX324_BO1,204,203,200_.jpg','Agatha Christie','1934-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Mysterious Affair at Styles','Crime','https://images-na.ssl-images-amazon.com/images/I/918TvCMQO4L.jpg','Agatha Christie','1920-10-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Death on the Nile','Crime','https://images-na.ssl-images-amazon.com/images/I/71Hm+U6EWgL.jpg','Agatha Christie','1937-11-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Agatha Christies Poirot','Crime','https://m.media-amazon.com/images/M/MV5BODljYzNlZTMtMWIwNi00N2QzLWE2ZTAtZDBmYzIwYzhlZDY2XkEyXkFqcGdeQXVyMjExMjk0ODk@._V1_.jpg','Agatha Christie','1989-01-08');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Murder of Roger Ackroyd','Crime','https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQ_GSPt6WQXmrGO17mh01OC5WXMKZY1kHF2uCRlXVgkyLUQQGKG','Agatha Christie','1926-06-01');
-- 3 Coelho
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Alchemist','Quest','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR0tgvYN4QHjHQDige5hIX2HkIe5hLSgwDr5zrn2Vd1-bchhyIM','Paulo Coelho','1988-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Veronika Decides to Die','Quest','https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/public.books/1348139939l/1431.jpg','Paulo Coelho','1998-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Manual of the Warrior of Light','Quest','https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSApELMTg6SEtoH-AohZrAYSrKfjBTZf_Z2ThKKTwvPgwkGGbUX','Paulo Coelho','1997-01-01');
-- 3 Follett
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Pillars of the Earth','Historical','https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509848492.jpg','Ken Follett','1989-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Fall of Giants','Historical','https://m.media-amazon.com/images/I/51PSEPcKYsL.jpg','Ken Follett','2010-09-10');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('World Without End','Historical','https://cdn.waterstones.com/bookjackets/large/9781/5098/9781509848508.jpg','Ken Follett','2007-01-01');
-- 3 Grisham
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('A time to kill','Legal thriller','https://m.media-amazon.com/images/I/51n7m1p75EL.jpg','John Grisham','1989-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Firm','Legal thriller','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTXx8M53kMLeKIUs26LgdsD_pDad2MWyqL7m2f491ChHhrWZ8Y','John Grisham','1991-02-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('A Time for Mercy','Legal thriller','https://images-na.ssl-images-amazon.com/images/I/913YS-xyYBL.jpg','John Grisham','2020-10-13');
-- 3 King
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Gunslinger','Fantasy','https://images-na.ssl-images-amazon.com/images/I/4153HF0AQAL.jpg','Stephen King','2003-07-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Shining','Horror','https://upload.wikimedia.org/wikipedia/en/4/4c/Shiningnovel.jpg','Stephen King','1977-01-28');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('It','Horror','https://upload.wikimedia.org/wikipedia/en/7/78/It_%28Stephen_King_novel_-_cover_art%29.jpg','Stephen King','1986-09-15');
-- 3 Murakami
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Norwegian Wood','Romance','https://images-na.ssl-images-amazon.com/images/I/91fJxgs69QL.jpg','Haruki Murakami','1987-01-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('1Q84','Alternate history','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBQZSg-b2LFkLlt9fWndS1w8SONabDZBHf0dtdb3-bqcuKxduL','Haruki Murakami','2011-05-25');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Kafka on the Shore','Fantasy','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHFU_j93PPsbQGqoaZJnHH6-Emk_sIxG823SkoRTL0nvdEP41f','Haruki Murakami','2002-09-12');
-- 3 Patterson
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('The Red Book','Crime','https://www.littlebrown.com/wp-content/uploads/2020/12/9780316499408-1.jpg?fit=484%2C750','James Patterson','2021-03-29');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Along Came a Spider','Crime','https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/public.books/1388272560l/13145.jpg','James Patterson','1993-02-01');
INSERT INTO public.books(name,category,cover,author,published_at) VALUES('Ali Cross','Crime','https://s3.amazonaws.com/ArchiveImages/LegacyReviews/SLJ/9780316530415.jpg','James Patterson','2019-11-25');


--EX 0 Query to update author birth_year for given author id

UPDATE public.authors 
	SET birth_year = 1964 
		WHERE
			id = 4
			RETURNING *


-- EX 1 Write an update query to update books cover for given book id
UPDATE public.books 
	SET cover = 'https://m.media-amazon.com/images/I/61dDgHODSOL.jpg' 
		WHERE
			id = 1
			RETURNING *

-- EX 2 Write an update query to update authors birth year
UPDATE public.authors
	SET birth_year =  1948
		WHERE
			id = 6
			RETURNING *

-- EX 3 Select books from a category (any)
SELECT DISTINCT category
FROM public.books

-- EX 3 Select books from a category (any)
SELECT * 
FROM public.books
	WHERE category LIKE 'Horror'

-- EX 4 Select books which start with a letter (any letter)
SELECT * 
FROM public.books
	WHERE name LIKE 'K%'

-- EX 5 Select books which include a given word  (any word)
SELECT * 
FROM public.books
	WHERE name LIKE '%Pillars%'

-- EX 6 Select authors which are “not” older than 60 years ()
SELECT * 
FROM public.authors
	WHERE (EXTRACT(YEAR FROM now()) - birth_year) < 60

-- EX 7 Select authors which are older than 40 years old
SELECT * 
FROM public.authors
	WHERE (EXTRACT(YEAR FROM now()) - birth_year) > 40

-- EX 8 Select only category,published_at from books
SELECT category,published_at
FROM public.books

-- EX 9 Count all books
SELECT COUNT(*)
FROM public.books

-- EX 10 Select authors and order them by age (calculate age in SQL, search about it 🤓) ASC (The extract function() is used to retrieves subfields such as year or hour from date/time values.)
SELECT *
FROM public.authors
	ORDER BY (EXTRACT(YEAR FROM now()) - birth_year) ASC

-- EX 11 Select authors and order them by birth_year desc
SELECT *
FROM public.authors
	ORDER BY birth_year DESC

-- EX 12 Delete all the authors from a given country
DELETE FROM public.authors 
WHERE country LIKE 'Japan'

-- EX 13 Delete all the books from a given category
DELETE FROM public.books 
WHERE category LIKE 'Crime,'

-- EX 14 Delete all authors if their last_name starts with H
DELETE FROM public.authors
WHERE last_name LIKE 'K%,'