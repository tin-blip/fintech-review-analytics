CREATE TABLE banks (
    bank_id SERIAL PRIMARY KEY,
    bank_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,

    bank_id INTEGER REFERENCES banks(bank_id),

    review TEXT NOT NULL,

    clean_review TEXT,

    rating INTEGER,

    review_date DATE,

    sentiment_label VARCHAR(20),

    sentiment_score FLOAT,

    identified_theme VARCHAR(100)
);