-- Deploy sqitch_ex:catalogs to pg
-- requires: appschema

BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE sqitch_ex.catalogs (
    id        		BIGSERIAL   PRIMARY KEY,
    title		  		TEXT        NOT NULL,
    description   TEXT        NOT NULL DEFAULT '' CHECK ( length(description) <= 180 ),
    timestamp 		TIMESTAMPTZ NOT NULL DEFAULT clock_timestamp()
);


COMMIT;
