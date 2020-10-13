CREATE SCHEMA wodcine;

-- ALTER USER cc7220 SET search_path TO wodcine,imdb250,"$user",public;
CREATE TABLE wodcine.Movie (
	id varchar (6) PRIMARY KEY,
	title varchar (255),
	debut date,
	until date,
	mpaa varchar (5),
	duration varchar (255),
	director varchar (255)
);

CREATE TABLE wodcine.Show (
	M_id varchar (6),
	time timestamp,
	T_id varchar (1),
	priceA decimal,
	priceB decimal
);

CREATE TABLE wodcine.Theatre (
	id varchar (1),
	capacity integer
);

COPY wodcine.Movie FROM '/home/cc7220/wod/exa-8.16-movie.tsv' DELIMITER E'\t';
COPY wodcine.Show FROM '/home/cc7220/wod/exa-8.16-show.tsv' DELIMITER E'\t';
COPY wodcine.Theatre FROM '/home/cc7220/wod/exa-8.16-theatre.tsv' DELIMITER E'\t';