-- Movie SQL Case Study
-- Author: Akshita
-- Database: PostgreSQL
-- Dataset: Movies Dataset
-- Objective: Data exploration, data quality checks, and analysis


-- Preview first 10 rows of the movies table
 SELECT *
FROM movies
LIMIT 10;

-- Check total number of rows in the movies table
SELECT COUNT(*) AS total_movies
FROM movies

-- Check for missing values in key columns
SELECT
    COUNT(*) AS total_rows,
    COUNT(title) AS title_non_null,
    COUNT(genres) AS genre_non_null,
    COUNT(budget) AS budget_non_null,
    COUNT(revenue) AS revenue_non_null
FROM movies;

-- Find top 10 most popular movies by vote count
SELECT title, vote_count, vote_average
FROM movies
ORDER BY vote_count DESC
LIMIT 10;

-- Analyze budget vs revenue for movies
SELECT 
    title, 
    budget, 
    revenue, 
    revenue - budget AS profit
FROM movies
ORDER BY profit DESC
LIMIT 10;


