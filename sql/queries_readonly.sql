-- Twin Cities Performing Arts Database
-- Read-only equivalents of the five questions in Queries.sql.
-- MariaDB 10.11. Use after importing Team09Project.sql.
-- Results describe the course's demonstration records, not live schedules.

-- 1. Which performances are scheduled for April 21–27, 2026?
SELECT p.production_ID, s.name AS show_name, v.name AS venue_name,
       p.`date`, p.`time`
FROM performance AS p
JOIN production AS pr ON pr.ID = p.production_ID
JOIN show_relation AS s ON s.name = pr.show_name
JOIN venue AS v ON v.ID = p.venue_ID
WHERE p.`date` BETWEEN '2026-04-21' AND '2026-04-27'
ORDER BY p.`date`, p.`time`, s.name;

-- 2. Which shows has the sample artist Ariana Stone worked on?
SELECT DISTINCT s.name AS show_name
FROM person AS pe
JOIN production_role_person AS prp ON prp.person_ID = pe.ID
JOIN production AS pr ON pr.ID = prp.production_ID
JOIN show_relation AS s ON s.name = pr.show_name
WHERE pe.name = 'Ariana Stone'
ORDER BY s.name;

-- 3. Which shows were performed at the Guthrie Theater before May 1, 2026?
-- Fixed cutoff makes the example reproducible across dates.
SELECT DISTINCT s.name AS show_name
FROM venue AS v
JOIN performance AS p ON p.venue_ID = v.ID
JOIN production AS pr ON pr.ID = p.production_ID
JOIN show_relation AS s ON s.name = pr.show_name
WHERE v.name = 'Guthrie Theater'
  AND p.`date` < '2026-05-01'
ORDER BY s.name;

-- 4. Which actors are assigned to the production of a given performance?
-- Cast assignments are linked to the production, not to individual showings.
SELECT DISTINCT pe.ID AS person_ID, pe.name AS actor_name,
       prp.characterName AS character_name
FROM performance AS p
JOIN production_role_person AS prp ON prp.production_ID = p.production_ID
JOIN person AS pe ON pe.ID = prp.person_ID
WHERE p.production_ID = 1
  AND p.venue_ID = 1101
  AND p.`date` = '2026-04-22'
  AND p.`time` = '19:30:00'
  AND prp.role_name = 'Actor'
ORDER BY pe.name;

-- 5. Which shows are classified as comedy?
SELECT name AS show_name
FROM show_relation
WHERE genre_name = 'Comedy'
ORDER BY name;
