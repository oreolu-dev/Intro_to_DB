import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Connect to MySQL server (without selecting a database)
        connection = mysql.connector.connect(
            host="localhost",
            user="root",               
            password="Ore@sanya1911"   
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
    
    except Error as e:
        print("Error while connecting to MySQL:", e)

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            # print("MySQL connection is closed")  # Optional

if __name__ == "__main__":
    create_database()
