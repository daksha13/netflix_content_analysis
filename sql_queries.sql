-- Count of Releases per year
SELECT release_year, COUNT(*) AS total_releases 
from titles GROUP BY release_year ORDER BY release_year;

-- Top 10 Most Common Genres
SELECT genre, COUNT(*) AS count FROM genres 
GROUP BY genre ORDER BY count DESC LIMIT 10;

-- Top 10 Content Producing Countries
SELECT country, COUNT(*) AS count FROM countries 
GROUP BY countries ORDER BY count DESC LIMIT 10;

-- Content Rating Breakdown
SELECT rating, COUNT(*) AS count from titles
GROUP BY rating ORDER BY count DESC;

-- Movies VS TV shows Trend
SELECT release_year, type, COUNT(*) AS count
FROM titles GROUP BY release_year, type ORDER BY count DESC;

-- Most Active Directors
SELECT director, COUNT(*) AS count FROM titles
WHERE director IS NOT NULL 
GROUP BY director ORDER BY count DESC LIMIT 10;