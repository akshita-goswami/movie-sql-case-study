-- Movie SQL Case Study
-- Author: Akshita
-- Database: PostgreSQL
-- Dataset: Movies Dataset
-- Objective: Data exploration, data quality checks, and analysis

 SELECT *
FROM movies
LIMIT 10;

-- Check for missing values in key columns
SELECT
    COUNT(*) AS total_rows,
    COUNT(title) AS title_non_null,
    COUNT(genre) AS genre_non_null,
    COUNT(budget) AS budget_non_null,
    COUNT(revenue) AS revenue_non_null
FROM movies;


