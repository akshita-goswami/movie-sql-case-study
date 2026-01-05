-- Analysis Queries

-- Top 10 most popular movies by vote count
SELECT title, vote_count, vote_average
FROM movies
ORDER BY vote_count DESC
LIMIT 10;

-- Budget vs revenue analysis
SELECT 
    title, 
    budget, 
    revenue, 
    revenue - budget AS profit
FROM movies
ORDER BY profit DESC
LIMIT 10;

-- Movies per genre analysis
SELECT genre_name, COUNT(*) AS movie_count
FROM (
    SELECT jsonb_array_elements(genres::jsonb)->>'name' AS genre_name
    FROM movies
) AS genre_table
GROUP BY genre_name
ORDER BY movie_count DESC
LIMIT 10;
