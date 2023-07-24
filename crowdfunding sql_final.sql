CREATE TABLE contacts(
	contact_id  INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL

);

CREATE TABLE category (
	category_id VARCHAR(20) NOT NULL PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);


CREATE TABLE subcategory (
	subcategory_id VARCHAR(25) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);


CREATE TABLE campaign (
	cf_id int NOT NULL PRIMARY KEY,
	contact_id int NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	company_name VARCHAR(100) NOT NULL,
	description VARCHAR(300) NOT NULL,
	goal float NOT NULL,
	pledged float NOT NULL,
	outcome VARCHAR(25) NOT NULL,
	backers_count int NOT NULL,
	country VARCHAR(20) NOT NULL,
	currency VARCHAR(10) NOT NULL,
	launched_date VARCHAR(30) NOT NULL,
	end_date VARCHAR(30) NOT NULL,
	category_id VARCHAR(20) NOT NULL,
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	subcategory_id VARCHAR(25) NOt NULL,
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)

);


SELECT * from campaign

SELECT * from category

SELECT * from subcategory

SELECT * from contacts


SELECT c.company_name,
y.category FROM campaign as c 
INNER JOIN category as y ON 
c.category_id = y.category_id

SELECT c.company_name from campaign as c
WHERE c.category_id =  'cat1'
