-- Drop the existing table if it exists
DROP TABLE IF EXISTS websites;

-- Create the table to store website information
CREATE TABLE websites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255) NOT NULL,
    social_media_links TEXT,
    tech_stack TEXT,
    meta_title VARCHAR(255),
    meta_description TEXT,
    payment_gateways TEXT,
    website_language VARCHAR(20),
    website_category VARCHAR(20)
);




SELECT * FROM websites;payment_gateways
SELECT url, social_media_links FROM websites;

SELECT * FROM websites WHERE payment_gateways IS NOT NULL;
SELECT COUNT(*) FROM websites;

