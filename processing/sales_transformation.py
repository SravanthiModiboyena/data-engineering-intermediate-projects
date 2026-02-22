from pyspark.sql import SparkSession
from pyspark.sql.functions import col
from pyspark.sql.functions import sum

spark = SparkSession.builder \
    .appName("LocalDataLakeProcessing") \
    .getOrCreate()

# Read Bronze Layer
df = spark.read.csv(
    "hdfs://localhost:9000/data_lake/bronze/sales_raw.csv",
    header=True,
    inferSchema=True
)

# Clean Data (Filter high value sales)
clean_df = df.filter(col("amount") > 20000)

# Write to Silver Layer
clean_df.write.mode("overwrite").csv(
    "hdfs://localhost:9000/data_lake/silver/clean_sales",
    header=True
)

# Gold Layer – Total Sales by City
gold_df = df.groupBy("city").agg(sum("amount").alias("total_sales"))

gold_df.write.mode("overwrite").csv(
    "hdfs://localhost:9000/data_lake/gold/city_sales",
    header=True
)

spark.stop()



