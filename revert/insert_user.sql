-- Revert sqitch_ex:insert_user from pg

BEGIN;

DROP FUNCTION sqitch_ex.insert_user(TEXT, TEXT);

COMMIT;
