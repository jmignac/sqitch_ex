-- Revert sqitch_ex:appschema from pg

BEGIN;

DROP SCHEMA sqitch_ex;

COMMIT;
