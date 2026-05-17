from sqlalchemy import create_engine

DB_USER = "postgres"
DB_PASSWORD = "anastasia@31"
DB_HOST = "localhost"
DB_PORT = "5432"
DB_NAME = "bank_mobile_app_reviews"

DATABASE_URL = f"postgresql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"

engine = create_engine(DATABASE_URL)

print("Database connected successfully!")