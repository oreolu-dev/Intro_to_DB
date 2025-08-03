import mysql.connector;

-- Initialization: initialize connection to MySQL server
connection = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Ore@sanya1911",
    database="alx_book_store"
)

-- Initialiazation: cursor created to execute sql commands
cursor = connection.cursor()

-- Command to create Customer table
cursor.execute("""
    CREATE TABLE books(
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(130) NOT NULL,
        author_id INT,
        price DOUBLE NOT NULL,
        publication_date DATE
    );
""")

SELECT 
    COLUMN_NAME,
    COLUMN_TYPE,
    IS_NULLABLE,
    COLUMN_KEY,
    COLUMN_DEFAULT,
    EXTRA
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'books'
    AND TABLE_SCHEMA = 'alx_book_store';


