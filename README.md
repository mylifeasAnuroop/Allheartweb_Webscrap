
# Web Scraping and Data Insertion Project
###### Author : Anuroop Arya 
This project is designed to scrape data from a list of websites and insert the extracted information into a MySQL database. The extracted data includes social media links, tech stack information, meta tags, payment gateways, website language, and website category.

## Dependencies

To run this project, you need the following dependencies:

- `mysql-connector-python`
- `requests`
- `beautifulsoup4`
- `langdetect`
- `pandas`

You can install these dependencies using pip:

```bash
pip install mysql-connector-python
pip install requests beautifulsoup4
pip install langdetect
```

## Database Setup

Ensure you have MySQL installed and running. Create a database and a table to store the scraped data. Use the following SQL script to create the necessary table:

```sql
CREATE DATABASE web_scraping_db;

USE web_scraping_db;

CREATE TABLE websites (
    id INT AUTO_INCREMENT PRIMARY KEY,
    url VARCHAR(255),
    social_media_links TEXT,
    tech_stack TEXT,
    meta_title TEXT,
    meta_description TEXT,
    payment_gateways TEXT,
    website_language VARCHAR(50),
    website_category VARCHAR(50)
);
```

## Project Structure

- `web_scraping_project.ipynb`: Jupyter notebook containing the project code.
- `README.md`: This file containing instructions on how to run the project.

## How to Run

1. **Clone the Repository**

   Clone this repository to your local machine.

   ```bash
   git clone https://github.com/yourusername/web-scraping-project.git
   cd web-scraping-project
   ```

2. **Open the Jupyter Notebook**

   Open the Jupyter notebook file `web_scraping_project.ipynb`.

   ```bash
   jupyter notebook web_scraping_project.ipynb
   ```

3. **Update Database Configuration**

   Update the database configuration in the notebook with your MySQL database credentials.

   ```python
   db_config = {
       'user': 'yourusername',
       'password': 'yourpassword',
       'host': 'localhost',
       'database': 'web_scraping_db'
   }
   ```

4. **Run the Notebook**

   Execute all cells in the notebook to scrape the websites and insert the data into the MySQL database.

## Functions

The project contains several functions to perform the following tasks:

- `fetch_html(url)`: Fetches HTML content from a URL.
- `extract_social_media_links(soup)`: Extracts social media links from the HTML content.
- `extract_tech_stack(soup)`: Extracts tech stack information from the HTML content.
- `extract_meta_tags(soup)`: Extracts meta tags (title and description) from the HTML content.
- `extract_payment_gateways(soup)`: Extracts payment gateway information from the HTML content.
- `extract_website_language(soup)`: Determines the language of the website based on the content.
- `extract_website_category(soup)`: Determines the category of the website based on the content.
- `insert_into_database(url, social_media_links, tech_stack, meta_title, meta_description, payment_gateways, website_language, website_category, cursor)`: Inserts the extracted data into the MySQL database.

## Example URLs

The project includes a list of URLs to scrape. You can modify this list as needed.

```python
urls = [
    "https://www.google.com",
    "https://www.facebook.com",
    ...
]
```

## Contact

If you have any questions or issues, please contact [Anuroop Arya](mailto:goodanuroop@gmail).
