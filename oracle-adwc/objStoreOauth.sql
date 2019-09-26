--
-- Check the User Credentials
--

SELECT *
FROM   user_credentials;

--
-- If necessary, drop the User Credentials
--

BEGIN
  dbms_cloud.drop_credential(credential_name => 'OBJ_STORE_CRED');
END;


--
-- If necessary, drop the User Credentials
--

BEGIN
  DBMS_CLOUD.create_credential (
    credential_name => 'OBJ_STORE_CRED',
    username => '<your username>',
    password => '<your Auth Token>'
  ) ;
END;
/

