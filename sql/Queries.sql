DROP TABLE IF EXISTS actor_in_prodid1_venueid8_2026_04_22_19_30_performance;
DROP TABLE IF EXISTS performance_prodid1_venueid8_2026_04_22_19_30_actor;
DROP TABLE IF EXISTS performance_prodid1_venueid8_2026_04_22_19_30_production_people;
DROP TABLE IF EXISTS performance_prodid1_venueid8_2026_04_22_19_30_production_team;
DROP TABLE IF EXISTS performance_prodid1_venueid8_2026_04_22_19_30;

DROP TABLE IF EXISTS q2_selected_artists_show;
DROP TABLE IF EXISTS q2_selected_artists_production;
DROP TABLE IF EXISTS q2_selected_artists_production_role_person;
DROP TABLE IF EXISTS q2_selected_person;

DROP TABLE IF EXISTS q3_selected_venues_past_show;
DROP TABLE IF EXISTS q3_selected_venues_past_production;
DROP TABLE IF EXISTS q3_selected_venues_past_performance;
DROP TABLE IF EXISTS q3_selected_venues_performance;
DROP TABLE IF EXISTS q3_selected_venue;

DROP TABLE IF EXISTS comedy_show;
DROP TABLE IF EXISTS comedy_genre_show;

--Query 1: Find all performances April 21st and April 27th 2026
SELECT production_ID, venue_ID, date, time
FROM performance
WHERE date >= '2026-04-21'
  AND date <= '2026-04-27';

--Query 2: Find all shows an artist worked in
CREATE TABLE q2_selected_person AS
SELECT *
FROM person
WHERE name = 'Ariana Stone';

CREATE TABLE q2_selected_artists_production_role_person AS
SELECT production_role_person.*, q2_selected_person.name AS artist_name
FROM q2_selected_person
JOIN production_role_person
ON q2_selected_person.ID = production_role_person.person_ID;

CREATE TABLE q2_selected_artists_production AS
SELECT 
    q2_selected_artists_production_role_person.*,
    production.show_name,
    production.theaterCompany_ID,
    production.ageRating
FROM q2_selected_artists_production_role_person
JOIN production
ON q2_selected_artists_production_role_person.production_ID = production.ID;

CREATE TABLE q2_selected_artists_show AS
SELECT DISTINCT show_name
FROM q2_selected_artists_production;

ALTER TABLE q2_selected_artists_show
MODIFY show_name VARCHAR(100) NOT NULL,
ADD PRIMARY KEY (show_name);

SELECT * FROM q2_selected_artists_show;

--Query 3: Find all past shows at a specific venue
CREATE TABLE q3_selected_venue AS
SELECT *
FROM venue
WHERE name = 'Guthrie Theater';

CREATE TABLE q3_selected_venues_performance AS
SELECT 
    performance.*,
    q3_selected_venue.name AS venue_name,
    q3_selected_venue.stage
FROM q3_selected_venue
JOIN performance
ON q3_selected_venue.ID = performance.venue_ID;

CREATE TABLE q3_selected_venues_past_performance AS
SELECT *
FROM q3_selected_venues_performance
WHERE `date` < CURRENT_DATE();

CREATE TABLE q3_selected_venues_past_production AS
SELECT 
    q3_selected_venues_past_performance.*,
    production.show_name,
    production.theaterCompany_ID,
    production.ageRating
FROM q3_selected_venues_past_performance
JOIN production
ON q3_selected_venues_past_performance.production_ID = production.ID;


CREATE TABLE q3_selected_venues_past_show AS
SELECT DISTINCT show_name
FROM q3_selected_venues_past_production;
ALTER TABLE q3_selected_venues_past_show
MODIFY show_name VARCHAR(100) NOT NULL,
ADD PRIMARY KEY (show_name);
SELECT * FROM q3_selected_venues_past_show;


--Query 4:  Find all actors worked in the performance with production id 1, venue id 1101, date 2026-04-22, time 19:30:00 
--FILTER
CREATE TABLE performance_prodid1_venueid8_2026_04_22_19_30 AS
SELECT *
FROM performance
WHERE production_ID = 1 AND venue_ID = 1101 AND date = '2026-04-22' AND time = '19:30:00';

ALTER TABLE performance_prodid1_venueid8_2026_04_22_19_30 ADD PRIMARY KEY(production_ID, venue_ID, date, time);

--MATCH JOIN
CREATE TABLE performance_prodid1_venueid8_2026_04_22_19_30_production_team AS
SELECT A.production_ID, A. venue_ID, A.date, A.time, B.role_name, B.person_ID
FROM performance_prodid1_venueid8_2026_04_22_19_30 A
JOIN production_role_person B
ON (A.production_ID = B.production_ID);

ALTER TABLE performance_prodid1_venueid8_2026_04_22_19_30_production_team ADD PRIMARY KEY(production_ID, venue_ID, date, time, role_name, person_ID);

--MATCH JOIN
CREATE TABLE performance_prodid1_venueid8_2026_04_22_19_30_production_people AS
SELECT A.production_ID, A. venue_ID, A.date, A.time, A.role_name, A.person_ID, B.name, B.phone, B.email
FROM performance_prodid1_venueid8_2026_04_22_19_30_production_team A
INNER JOIN person B
ON (A.person_ID = B.ID);

ALTER TABLE performance_prodid1_venueid8_2026_04_22_19_30_production_people ADD PRIMARY KEY(production_ID, venue_ID, date, time, role_name, person_ID);

--FILTER
CREATE TABLE performance_prodid1_venueid8_2026_04_22_19_30_actor AS
SELECT *
FROM performance_prodid1_venueid8_2026_04_22_19_30_production_people
WHERE role_name = 'Actor';

ALTER TABLE performance_prodid1_venueid8_2026_04_22_19_30_actor ADD PRIMARY KEY(production_ID, venue_ID, date, time, role_name, person_ID);

--REDUCE
CREATE TABLE actor_in_prodid1_venueid8_2026_04_22_19_30_performance AS
SELECT DISTINCT person_ID, name, phone, email
FROM performance_prodid1_venueid8_2026_04_22_19_30_actor;

ALTER TABLE actor_in_prodid1_venueid8_2026_04_22_19_30_performance ADD PRIMARY KEY(person_ID);

SELECT * FROM actor_in_prodid1_venueid8_2026_04_22_19_30_performance;

--Query 5:  Find all comedy show
--FILTER
CREATE TABLE comedy_show AS
SELECT *
FROM show_relation
WHERE genre_name = 'Comedy';

ALTER TABLE comedy_show ADD PRIMARY KEY(name);

SELECT * FROM comedy_show;
