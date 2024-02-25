-- Verify table creation for the four tables
SELECT * FROM categories;
SELECT * FROM subcategories;
SELECT * FROM contacts;
SELECT * FROM campaigns;

-- Verify correct data present in each table
SELECT * FROM categories LIMIT 5;
SELECT * FROM subcategories LIMIT 5;
SELECT * FROM contacts LIMIT 5;
SELECT * FROM campaigns LIMIT 5;

-- Verify foreign keys are correctly set up
SELECT cf_id, category FROM campaigns AS cmpg
    JOIN categories AS ctgs ON cmpg.category_id = ctgs.category_id
    LIMIT 3;
SELECT cf_id, subcategory FROM campaigns AS cmpg
    JOIN subcategories AS subctgs ON cmpg.subcategory_id = subctgs.subcategory_id
    LIMIT 3;
SELECT cf_id, first_name FROM campaigns AS cmpg
    JOIN contacts AS ctcs ON cmpg.contact_id = ctcs.contact_id
    LIMIT 3;