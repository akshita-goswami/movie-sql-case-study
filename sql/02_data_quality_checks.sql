-- Data Quality Checks

-- Check for missing values in key columns
SELECT
    COUNT(*) AS total_rows,
    COUNT(title) AS title_non_null,
    COUNT(genres) AS genre_non_null,
    COUNT(budget) AS budget_non_null,
    COUNT(revenue) AS revenue_non_null
FROM movies;
