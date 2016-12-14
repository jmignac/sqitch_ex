-- Deploy sqitch_ex:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION sqitch_ex.change_pass(
    nick    TEXT,
    oldpass TEXT,
    newpass TEXT
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE sqitch_ex.users
       SET password = md5($3)
     WHERE nickname = $1
       AND password = md5($2);
    RETURN FOUND;
END;
$$;

COMMIT;
