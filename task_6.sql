import mysql.connector

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
    CREATE TABLE IF NOT EXISTS customer (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215),
        address TEXT
    );
""")

-- Command to insert a multiple customer record
cursor.execute("""
    INSERT INTO customer (customer_id, customer_name, email, address)
    VALUES (%s, %s, %s, %s)
""",
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness  Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness  Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness  Ave.');