-- Revert sqitch_ex:change_pass from pg

BEGIN;

DROP FUNCTION sqitch_ex.change_pass(TEXT, TEXT, TEXT);

COMMIT;
