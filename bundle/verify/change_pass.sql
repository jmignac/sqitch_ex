-- Verify sqitch_ex:change_pass on pg

BEGIN;

SELECT has_function_privilege('sqitch_ex.change_pass(text, text, text)', 'execute');

ROLLBACK;
