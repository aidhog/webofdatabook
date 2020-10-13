CREATE SCHEMA wodnobel;

-- ALTER USER cc7220 SET search_path TO wodcine,wodnobel,imdb250,"$user",public;

CREATE TABLE wodnobel.Award (
	name varchar PRIMARY KEY,
	since integer
);

CREATE TABLE wodnobel.Laureate (
	winner varchar,
	year integer,
	A_name varchar REFERENCES wodnobel.Award(name),
	genre varchar,
	PRIMARY KEY(winner,year,A_name)
);

COPY wodnobel.Award FROM '/home/cc7220/wod/exr-8.03-award.tsv' DELIMITER E'\t';
COPY wodnobel.Laureate FROM '/home/cc7220/wod/exr-8.03-laureate.tsv' DELIMITER E'\t';