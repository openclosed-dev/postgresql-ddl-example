\encoding utf8
\set ON_ERROR_STOP on

CREATE SCHEMA schema1;

CREATE TABLE schema1.table1(
    id integer,
    PRIMARY KEY(id)
);

\dt schema1.*
