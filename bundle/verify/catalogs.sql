-- Verify sqitch_ex:catalogs on pg

BEGIN;

SELECT id
     , title
     , description
     , timestamp
  FROM sqitch_ex.catalogs
 WHERE FALSE;

ROLLBACK;
