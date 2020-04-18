-- Create Schema on Oracle ADWC
--
CREATE USER adwc_demo IDENTIFIED BY <password>
;

-- Oracle Autonomous Data Warehouse Cloud comes with a pre-defined database role named DWROLE.
-- This role provides the common privileges for a data warehouse user: 
--
-- CREATE ANALYTIC VIEW, CREATE ATTRIBUTE DIMENSION, ALTER SESSION, CREATE HIERARCHY, CREATE JOB, 
-- CREATE MINING MODEL, CREATE PROCEDURE, CREATE SEQUENCE, CREATE SESSION, CREATE SYNONYM, CREATE TABLE, 
-- CREATE TRIGGER, CREATE TYPE, CREATE VIEW, READ,WRITE ON directory DATA_PUMP_DIR, 
-- EXECUTE privilege on the PL/SQL package DBMS_CLOUD  
--
-- Grant dwrole
--
GRANT dwrole TO adwc_demo
;

-- Grant usage on Data Tablespace
--
ALTER USER adwc_demo
    QUOTA 250M ON data
;