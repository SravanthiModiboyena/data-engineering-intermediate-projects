#!/bin/bash

echo "Uploading raw data to Bronze layer..."

hdfs dfs -put -f ../data/sales_raw.csv /data_lake/bronze/

echo "Upload Completed!"
