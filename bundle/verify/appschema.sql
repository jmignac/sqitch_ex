-- Verify sqitch_ex:appschema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('sqitch_ex', 'usage');
SELECT 1/COUNT(*) FROM information_schema.schemata WHERE schema_name = 'sqitch_ex';

ROLLBACK;
