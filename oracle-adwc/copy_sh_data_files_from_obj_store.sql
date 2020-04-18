/* Change the table names (if changed), region name, tenant name, bucket name, and file names (if changed) according to your needs */
BEGIN
    dbms_cloud.copy_data(table_name => 'CHANNELS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/chan_v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'COUNTRIES', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/coun_v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'CUSTOMERS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/cust1v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD-HH24-MI-SS')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'SUPPLEMENTARY_DEMOGRAPHICS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/dem1v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'SALES', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/dmsal_v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'PRODUCTS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/prod1v3.dat'
    , format =>
        JSON_OBJECT('delimiter' VALUE '|', 'quote' VALUE '^', 'ignoremissingcolumns' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD-HH24-MI-SS'
        , 'blankasnull' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'PROMOTIONS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/prom1v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD-HH24-MI-SS',
        'blankasnull' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'SALES', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/sale1v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD', 'blankasnull'
        VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'TIMES', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/time_v3.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'removequotes' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD-HH24-MI-SS',
        'blankasnull' VALUE 'true')
    );
END;
/

BEGIN
    dbms_cloud.copy_data(table_name => 'COSTS', credential_name => 'OBJ_STORE_CRED', file_uri_list => 'https://swiftobjectstorage.<region name>.oraclecloud.com/v1/<tenant name>/<bucket name>/costs.dat'
    , format =>
        JSON_OBJECT('ignoremissingcolumns' VALUE 'true', 'dateformat' VALUE 'YYYY-MM-DD', 'blankasnull' VALUE 'true')
    );
END;
/