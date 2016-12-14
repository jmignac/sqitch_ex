-- Verify sqitch_ex:insert_user on pg

BEGIN;

SELECT has_function_privilege('sqitch_ex.insert_user(text, text)', 'execute');

ROLLBACK;
