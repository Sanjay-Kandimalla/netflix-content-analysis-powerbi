-- 1. View sample records
SELECT *
FROM public_titles_fact
LIMIT 10;

-- 2. Count total records
SELECT COUNT(*) AS total_rows
FROM public_titles_fact;

-- 3. Distinct content types
SELECT DISTINCT type
FROM public_titles_fact;

-- 4. Check date range
SELECT
    MIN(release_year) AS earliest_release,
    MAX(release_year) AS latest_release
FROM public_titles_fact;

-- 5. Count by type
SELECT
    type,
    COUNT(*) AS total_titles
FROM public_titles_fact
GROUP BY type;

-- 6. Check null values
SELECT
    COUNT(*) FILTER (WHERE title IS NULL) AS null_titles,
    COUNT(*) FILTER (WHERE rating IS NULL) AS null_ratings,
    COUNT(*) FILTER (WHERE release_year IS NULL) AS null_release_year
FROM public_titles_fact;