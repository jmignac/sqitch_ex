-- Deploy sqitch_ex:insert_user to pg
-- requires: users
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION sqitch_ex.insert_user(
    nickname TEXT,
    password TEXT
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO sqitch_ex.users VALUES($1, md5($2));
$$;

COMMIT;
