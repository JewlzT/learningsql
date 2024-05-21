/* Remember to comment out code you are not working with */
/* For more info: Programming Foundations: Databases */

/* Ask for data with SElECT */
/*
SELECT * FROM people;
*/

/* Narrow down a query with WHERE */

/*
SELECT first_name, last_name, city 
FROM people
WHERE city IS 'Los Angeles';
*/

/* Adding more criteria to a statement (using parenthesis) */

/*
SELECT first_name, last_name, city, team, shirt_or_hat
FROM people
WHERE (city IS 'Los Angeles' OR city IS 'Arlington') AND team IS 'Cosmic Cobras';
*/

/* Broadening and limiting responses (%, LIMIT, OFFSET) */

/*
SELECT first_name, last_name, quiz_points 
FROM people
WHERE quiz_points LIKE '9%'
LIMIT 10 OFFSET 1;
*/

/* Organize responses with ORDER BY (%, LIMIT, OFFSET) */

/*
SELECT first_name, last_name 
FROM people
ORDER BY last_name DESC;
*/

/* Finding information about the data (LENGTH,DISTINCT,COUNT) */

/*
SELECT DISTINCT last_name, LENGTH(DISTINCT(last_name))
FROM people
ORDER BY last_name;
*/

/*
SELECT COUNT(team)
FROM people
WHERE team = 'Angry Ants';
*/

/* Code Challenge #1 */

/*
SELECT team, shirt_or_hat, first_name, last_name
FROM people
WHERE state_code IS 'CO'
ORDER BY team, shirt_or_hat, last_name DESC;
*/

/* Data across two or more tables (practice being specific)*/

/*
SELECT ppl.first_name, ppl.state_code, states.division
FROM people ppl
JOIN states ON ppl.state_code=states.state_abbrev;
*/

/* JOIN types (cross join, inner join, [left, right, full] outer join ) */

/*
SELECT p.first_name, p.last_name, p.state_code, s.state_name
FROM states s
LEFT JOIN people p ON p.state_code=s.state_abbrev;
*/

/* Grouping results (GROUP BY) */

/*
SELECT first_name, COUNT(first_name)
FROM people
GROUP BY first_name;
*/

/* Code Challenge #2 (remember to connect tables first) */

/*
SELECT states.region, people.team, COUNT(people.team)
FROM people
JOIN states ON people.state_code=states.state_abbrev
GROUP BY states.region, people.team;
*/

/* Math (we can use operators) */

/*
SELECT AVG(quiz_points)
FROM people;
*/

/* Compound Select */

/*
SELECT first_name, last_name, quiz_points
FROM people
WHERE quiz_points=(SELECT MAX(quiz_points) FROM people);
*/

/* Notes: Transforming data (SUBSTR, REPLACE, CAST) */
/* Notes: Create aliases for the field names with AS */

/* Coding Challenge 3 */

/*
SELECT states.state_name AS STATE, MAX(people.quiz_points) AS MAXPOINTS, AVG(people.quiz_points) AS AVGPOINTS 
FROM people
JOIN states ON people.state_code=states.state_abbrev
GROUP BY states.state_name
ORDER BY AVGPOINTS DESC, state_name ASC;
*/

/* Add data to a table (INSERT INTO...VALUES) */

/*
INSERT INTO people
(first_name, last_name)
VALUES
('Lilly', 'Hills')
*/

/* Modify data in a table (UPDATE...SET...WHERE) */

/*
UPDATE people
SET last_name = 'Morrison'
WHERE id_number=175;
*/

/* Delete data from a table (DELETE...FROM...WHERE) */

/*
DELETE FROM people
WHERE id_number=175;
*/

/* Code Challenge #4 */

/*
SELECT id_number, first_name, state_code, team
FROM people
WHERE first_name = 'Alice' AND state_code = 'FL' AND team LIKE '%Cobras';
*/