-- Revert sqitch_ex:catalogs from pg

BEGIN;

DROP table sqitch_ex.catalogs;

COMMIT;
