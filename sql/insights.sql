SELECT * FROM banks;
SELECT * FROM reviews Limit 10;

SELECT
    b.bank_name,
    AVG(r.sentiment_score) AS avg_sentiment
FROM reviews r
JOIN banks b
ON r.bank_id = b.bank_id
GROUP BY b.bank_name;


SELECT
    identified_theme,
    COUNT(*) AS total_reviews
FROM reviews
GROUP BY identified_theme
ORDER BY total_reviews DESC;


SELECT
    b.bank_name,
    AVG(r.rating) AS avg_rating
FROM reviews r
JOIN banks b
ON r.bank_id = b.bank_id
GROUP BY b.bank_name;