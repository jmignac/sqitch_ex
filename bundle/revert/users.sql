-- Revert sqitch_ex:users from pg

BEGIN;

DROP TABLE sqitch_ex.users

COMMIT;
