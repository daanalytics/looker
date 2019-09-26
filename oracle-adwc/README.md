# Looker into Oracle Autonomous Database

Find scripts in this folder related to the topic on the **DaAnalytics**-blog; [Looker into Oracle Autonomous Database]( https://daanalytics.nl/looker-into-oracle-adwc/).

## Setup the Oracle Autonomous Data Warehouse (ADWC) Environment
Oracle provides a tutorial to easily load some data into Oracle ADWC. For this blogpost, it's enough to follow the first three steps.

1. Provisioning Autonomous Data Warehouse Cloud
2. Connecting SQL Developer and Creating Tables
3. Loading Your Data

Find below references to files and scripts I used to setup Oracle ADWC.

### 1. Create a user in the Autonomous Data Warehouse Cloud Database

Create a user (ADWC_DEMO) in Oracle ADWC using the following [script](https://github.com/daanalytics/looker/blob/master/oracle-adwc/adwc_demo_user.sql)

### 2. Create SH Tables in the Autonomous Data Warehouse Cloud Database

The Sales History (SH) tables can be created in the ADWC_DEMO schema via this [script](https://github.com/daanalytics/looker/blob/master/oracle-adwc/adwc_demo_sh.sql)

### 3. Upload Data Files to the Oracle Object Store

The above created SH-tables can be loaded via the Oracle Object Store. Find the data files in this [archive](https://github.com/daanalytics/looker/blob/master/oracle-adwc/datafiles_for_sh_tables.zip)

### 4. Create Object Store Credentials in the Autonomous Data Warehouse Cloud Schema

To make sure the ADWC_DEMO user is able to connect to the Object Store. Use this [script](https://github.com/daanalytics/looker/blob/master/oracle-adwc/objStoreOauth.sql) to view, create (or possibly delete) the Object Store Credential.

### 5. Copy data from the Object Store to the Autonomous Data Warehouse Database SH-tables

Finally copy the SH-data from the object store to the ADWC_DEMO user in Oracle ADWC running the following [script](https://github.com/daanalytics/looker/blob/master/oracle-adwc/copy_sh_data_files_from_obj_store.sql). Don't forget to change the table names (if changed), region name, tenant name, bucket name, and file names (if changed) according to your needs.

## Prepare Oracle Autonomous Data Warehouse (ADWC) for Looker

Now the Oracle ADWC environment is ready and loaded with data. Now it's time prepare the Oracle ADWC to work with the Looker Data Platform. On the [Looker website](https://docs.looker.com/setup-and-management/database-config/oracle-adwc) is a step-by-step All the steps, can be performed following this [script](https://github.com/daanalytics/looker/blob/master/oracle-adwc/LookeronOracleADWC.sql). 



