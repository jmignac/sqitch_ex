-- Verify sqitch_ex:users on pg

BEGIN;

SELECT nickname, password, timestamp
  FROM sqitch_ex.users
  WHERE FALSE;

ROLLBACK;
