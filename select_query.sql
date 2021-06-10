SELECT name, year FROM album
	WHERE year = 2018;
SELECT name, duration FROM music
	ORDER BY duration DESC
	LIMIT 1;
SELECT name FROM music
	WHERE duration >= 210
SELECT name FROM collection
	WHERE year BETWEEN 2018 AND 2020;
SELECT name FROM musician 
	WHERE name NOT LIKE '%_% %_%';
SELECT name FROM music
	WHERE name ILIKE '%my%' OR name ILIKE '%мой%';
