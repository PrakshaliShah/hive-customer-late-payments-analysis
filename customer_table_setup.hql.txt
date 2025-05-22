1. $ hadoop fs -mkdir HV
2. $ hadoop fs -mkdir HV/input
3. $ hadoop fs -copyFromLocal CustomerDetails.txt HV/input
4. $ hadoop fs -copyFromLocal LatePayments.txt HV/input
5. $ hive
6. hive> CREATE DATABASE bank_db COMMENT 'This database is created for analyzing customer late payments';
7. hive> show databases;
8. hive> use bank_db;
9. hive> CREATE TABLE IF NOT EXISTS bank_db.payments (c_id int, transaction_id string, transaction_date string, late string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
10. hive> CREATE TABLE IF NOT EXISTS bank_db.payments_ptn (c_id int, transaction_id string, transaction_date string) PARTITIONED BY (late string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
11. hive> CREATE EXTERNAL TABLE IF NOT EXISTS bank_db.customers_ext (c_id int, c_firstname string, c_lastname string, c_street string, c_city string, c_state string, c_zip string, c_yob int, c_gender string, credit_card string, internet string, mobile string) COMMENT 'This is a table stored externally in HV/bank subdirectory of the HDFS.' ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' LINES TERMINATED BY '\n' STORED AS TEXTFILE LOCATION '/user/hive/warehouse/bank_db/customers_ext';
12. hive> show tables;
13. hive> drop table payments_ptn;
14. hive> alter table customers_ext RENAME TO customers;
15. hive> describe payments;
16. hive> describe customers;
17. hive> LOAD DATA INPATH 'HV/input/LatePayments.txt' OVERWRITE INTO TABLE payments;
18. hive> LOAD DATA INPATH 'HV/input/CustomerDetails.txt' OVERWRITE INTO TABLE customers;
19. hive> SELECT * FROM payments;
20. hive> SELECT * FROM customers;