drop table if exists t_totos;

CREATE TABLE t_totos (
	id INTEGER GENERATED always as identity PRIMARY KEY,
	toto_name VARCHAR NOT NULL
);