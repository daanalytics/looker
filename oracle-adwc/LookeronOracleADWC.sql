-- Create and prepare the Looker User
--

CREATE USER LOOKER IDENTIFIED BY <password>
DEFAULT TABLESPACE USERS
TEMPORARY TABLESPACE TEMP
;

--

GRANT CREATE SESSION TO LOOKER
;

-- 

ALTER USER LOOKER
    DEFAULT TABLESPACE data
    TEMPORARY TABLESPACE temp
    ACCOUNT UNLOCK
;

--

ALTER USER LOOKER
    QUOTA UNLIMITED ON data
;

--

ALTER USER LOOKER DEFAULT ROLE resource
;

--

GRANT CREATE SESSION TO LOOKER
;

--

GRANT UNLIMITED TABLESPACE TO LOOKER
;

--

GRANT CREATE TABLE TO LOOKER
;

--
-- Grant SELECT on all tables in the SH-schema (ADWC_DEMO)
--

GRANT SELECT ON adwc_demo.CHANNELS TO LOOKER;
GRANT SELECT ON adwc_demo.COSTS TO LOOKER;
GRANT SELECT ON adwc_demo.COUNTRIES TO LOOKER;
GRANT SELECT ON adwc_demo.CUSTOMERS TO LOOKER;
GRANT SELECT ON adwc_demo.PRODUCTS TO LOOKER;
GRANT SELECT ON adwc_demo.PROMOTIONS TO LOOKER;
GRANT SELECT ON adwc_demo.SALES TO LOOKER;
GRANT SELECT ON adwc_demo.SALESTEMP TO LOOKER;
GRANT SELECT ON adwc_demo.SUPPLEMENTARY_DEMOGRAPHICS TO LOOKER;
GRANT SELECT ON adwc_demo.TIMES TO LOOKER;

--
-- Ensure Looker can see all Tables
--

EXECUTE dbms_stats.gather_schema_stats(ownname => 'ADWC_DEMO', estimate_percent => NULL)
;

-- Set up main Database Objects
-- The following commands create LOOKER_SESSION and LOOKER_SQL as synonyms for V$SESSION and V$SQL
--

CREATE OR REPLACE VIEW LOOKER_SQL
AS
  SELECT sql.SQL_ID, sql.SQL_TEXT
  FROM V$SQL sql ,v$session sess
  WHERE sess.SQL_ADDRESS = sql.ADDRESS
  AND sess.username='LOOKER'
;

--

CREATE OR REPLACE SYNONYM LOOKER.LOOKER_SQL FOR LOOKER_SQL
;

--

GRANT SELECT ON LOOKER.LOOKER_SQL TO LOOKER
;

--

CREATE OR REPLACE VIEW LOOKER_SESSION 
AS 
SELECT SID
,      USERNAME
,      TYPE
,      STATUS
,      SQL_ID
,      "SERIAL#"
,      AUDSID 
FROM   V$SESSION 
WHERE  USERNAME='LOOKER'
;

--

CREATE OR REPLACE SYNONYM looker.looker_session FOR looker_session
;

--

GRANT SELECT ON LOOKER.LOOKER_SESSION TO LOOKER
;

--
-- Set up Symmetric Aggregates, the LOOKER_HASH function to enable symmetric aggregates. The LOOKER_HASH function is a synonym for the Oracle dbms_crypto.hash function.
--

CREATE OR REPLACE FUNCTION LOOKER_HASH(bytes raw, prec number)
  RETURN raw AS
    BEGIN
  return(dbms_crypto.HASH(bytes, prec));
END;

--

CREATE OR REPLACE SYNONYM LOOKER.LOOKER_HASH FOR LOOKER_HASH
;

--

GRANT EXECUTE ON LOOKER.LOOKER_HASH TO LOOKER
;

--

GRANT EXECUTE ON ADMIN.LOOKER_HASH TO LOOKER
;

--
-- Set up Persistent Derived Tables
-- In order to enable Persistent Derived Tables, give the Looker user the UNLIMITED TABLESPACE and CREATE TABLE permissions. 
--

GRANT UNLIMITED TABLESPACE TO LOOKER;
GRANT CREATE TABLE TO LOOKER;

--
-- Set up Query Killing
-- To set up query killing the Oracle DBA must create the LOOKER_KILL_QUERY procedure as a synonym of ALTER SYSTEM KILL SESSION.
--

CREATE OR REPLACE PROCEDURE looker_kill_query (
    p_sid       IN          VARCHAR2,
    p_serial#   IN          VARCHAR2
) IS
    cursor_name   PLS_INTEGER DEFAULT dbms_sql.open_cursor;
    ignore        PLS_INTEGER;
BEGIN
    SELECT
        COUNT(*)
    INTO ignore
    FROM
        v$session
    WHERE
        username = user
        AND sid = p_sid
        AND serial# = p_serial#;

    IF ( ignore = 1 ) THEN
        dbms_sql.parse(cursor_name, 'alter system kill session '''
                                    || p_sid
                                    || ','
                                    || p_serial#
                                    || '''', dbms_sql.native);

        ignore := dbms_sql.execute(cursor_name);
    ELSE
        raise_application_error(-20001, 'You do not own session '''
                                        || p_sid
                                        || ','
                                        || p_serial#
                                        || '''');
    END IF;

END;

--

CREATE OR REPLACE SYNONYM LOOKER.LOOKER_KILL_QUERY FOR ADMIN.LOOKER_KILL_QUERY;
GRANT EXECUTE ON ADMIN.LOOKER_KILL_QUERY TO LOOKER;
