
CREATE TABLE categories (
    category_id VARCHAR(15) PRIMARY KEY NOT NULL,
    category VARCHAR
);

CREATE TABLE subcategories (
    subcategory_id VARCHAR(15) PRIMARY KEY NOT NULL,
    subcategory VARCHAR
);

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL
);

CREATE TABLE campaigns (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR,
    description VARCHAR,
    goal FLOAT,
    pledged FLOAT,
    outcome VARCHAR,
    backers_count INT,
    country VARCHAR,
    currency VARCHAR,
    lanched_date DATE,
    end_date DATE,
    category_id VARCHAR,
    subcategory_id VARCHAR,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id)
);
