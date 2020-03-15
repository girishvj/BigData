CREATE EXTERNAL TABLE IF NOT EXISTS default.look_up (
	card_id STRING, 
	member_id STRING,
	member_joining_dt STRING,
	card_purchase_dt STRING,
	country STRING,
	city STRING,
	UCL STRING, 
	postcode STRING, 
	transaction_dt STRING,
	score STRING
)
ROW FORMAT DELIMITED 
COLLECTION ITEMS TERMINATED BY '~' 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES ("hbase.columns.mapping" = "cfl:member_id,cfl:member_joining_dt,cfl:card_purchase_dt,cfl:country,cfl:city,cfl:UCL,cfl:postcode,cfl:transaction_dt,cfl:score")
TBLPROPERTIES ("hbase.table.name" = "look_up");
