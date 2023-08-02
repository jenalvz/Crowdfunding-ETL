DROP TABLE IF EXISTS Category CASCADE;
DROP TABLE IF EXISTS Subcategory CASCADE;
DROP TABLE IF EXISTS Contacts CASCADE;
DROP TABLE IF EXISTS Campaign CASCADE;


-- Category table
CREATE table Category(
    category_id varchar(10) NOT NULL,
    category varchar(30) NOT NULL,
    Primary key (category_id))

SELECT * FROM Category

-- Subcategory data table
CREATE table Subcategory(
    subcategory_id varchar(10) NOT NULL,
    subcategory varchar(10) NOT NULL,
    Primary key (subcategory_id))

SELECT * FROM Subcategory

-- Contacts table
CREATE table Contacts(
    Contact_id int NOT NULL,
    First_name varchar(30) NOT NULL,
    Last_name varchar(30) NOT NULL,
    Email varchar(50) NOT NULL,
    Primary key (Contact_id))

SELECT * FROM Contacts

-- Campaign table
CREATE table Campaign(
    cf_id int NOT NULL,
    contact_id int NOT NULL,
    company_name varchar(50) NOT NULL,
    "description" varchar(50) NOT NULL,
    goal money NOT NULL,
    pledged money NOT NULL,
    outcome varchar(10) NOT NULL,
    backers_count int NOT NULL,
    country varchar(10) NOT NULL,
    currency varchar(10) NOT NULL,
    launched_date date NOT NULL,
    end_date date NOT NULL,
    category_id varchar(10) NOT NULL,
    subcategory_id varchar(10) NOT NULL,
    Primary key (cf_id) 
    Foreign key (contact_id) references Contacts(contact_id),
    Foreign key (category_id) references Category(category_id),
    Foreign key (subcategory_id) references Subcategory(subcategory_id))

SELECT * FROM Campaign

