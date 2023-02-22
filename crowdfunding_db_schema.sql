CREATE TABLE category(
	category_id VARCHAR(4) NOT NULL PRIMARY KEY,
	category VARCHAR(255) NOT NULL)

CREATE TABLE subcategory(
	subcategory_id VARCHAR(6) NOT NULL PRIMARY KEY,
	subcategory VARCHAR(255) NOT NULL)

CREATE TABLE contacts(
	contact_id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL)
	
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL references contacts(contact_id),
	company_name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	goal MONEY NOT NULL,
	pledged MONEY NOT NULL,
	outcome VARCHAR(50) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(2) NOT NULL,
	currency VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(4) NOT NULL references category(category_id),
	subcategory_id VARCHAR(6) NOT NULL references subcategory(subcategory_id)
)

SELECT * from campaign;
SELECT * from contacts;
SELECT * from category;
SELECT * from subcategory;