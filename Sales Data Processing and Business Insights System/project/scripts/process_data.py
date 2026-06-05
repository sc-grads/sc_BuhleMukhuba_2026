import pandas as pd 
import numpy as np
from datetime import datetime
import csv
import sys
import os
import logging

audit_file = "../output/audit.csv"

if not os.path.exists(audit_file):
    with open(audit_file, "w") as f:
        f.write("timestamp,level,message\n")

logging.basicConfig(level= logging.DEBUG, 
                    filename=audit_file, 
                    filemode="a",
                    format="%(asctime)s,%(levelname)s,%(message)s",
                    datefmt="%Y-%m-%d %H:%M:%S")
logging.info("----------Beginning of log----------")
try:
    logging.info("Ingesting messy sales data")
    df = pd.read_csv("../data/Messy_Sales_Data.csv")
except Exception as e:
    logging.error(e)

logging.info("Displaying uncleaned structure of the data")   
print(df.info())

print(df)

#Data Cleaning
logging.info("Data Validation - Checking for missing values")

print(df.isnull().sum())

logging.info("Handling missing values")

df = df.fillna({"salesperson" : "Unknown"})

df = df.dropna(subset=["quantity"])

print(df.isnull().sum())

logging.info("Data Validation - Checking for duplicates")

print(df[df.duplicated()])

logging.info("Removing duplicates")

df = df.drop_duplicates().reset_index(drop= True)
df.index = df.index + 1 

logging.info("Standardising Formats")

print(df.info())

df["date"] = pd.to_datetime(df["date"])

df["quantity"] = df["quantity"].astype(int)
 
print(df.info())

#Data Transformation
logging.info("Transforming data")

logging.info("Calculating revenue and creating new column")
#Revenue
df["revenue"] = df["price"] * df["quantity"]

logging.info("Extracting month from date and creating new column")
#Month from date
df["month"] = pd.to_datetime(df["date"]).dt.strftime("%B")

logging.info("Organising columns")
#Organise columns
df = df[["transaction_id", "date", "month", "product", "category", "quantity", "price", "revenue", "region", "salesperson"]]

logging.info("Exporting clean dataset")

try:
    df.to_csv("../output/ clean_sales.csv", index= False)
except Exception as e:
    logging.error(e)

logging.info("Data Aggregation")

#Sales by region
logging.info("Creating sales by region dataset and exporting")
try:
    groupregion = df.groupby("region")["revenue"].sum()

    groupregion_df = groupregion.reset_index()
    groupregion_sorted = groupregion_df.sort_values(by="region", ascending= True)

    groupregion_sorted.to_csv("../output/ sales_by_region.csv", index= False)
except Exception as e:
    logging.error(e)

#Sales by product
logging.info("Creating sales by product dataset and exporting")
try:
    groupprod = df.groupby("product")["revenue"].sum()

    groupprod_df = groupprod.reset_index()
    groupprod_sorted = groupprod_df.sort_values(by="revenue", ascending= False)

    groupprod_sorted.to_csv("../output/ sales_by_product.csv", index= False)
except Exception as e:
    logging.error(e)

#Monthly revenue
logging.info("Creating monthly revenue dataset and exporting")
try:
    grouprev = df.groupby("month")["revenue"].sum()

    grouprev_df = grouprev.reset_index()
    grouprev_sorted = grouprev_df.sort_values(by="revenue", ascending= False)

    grouprev_sorted.to_csv("../output/ monthly_revenue.csv", index= False)
except Exception as e:
    logging.error(e)

#Salesperson performance
logging.info("Creating salesperson performance dataset and exporting")
try:
    groupperf = df.groupby("salesperson")["revenue"].sum()

    groupperf_df = groupperf.reset_index()
    groupperf_sorted = groupperf_df.sort_values(by="salesperson", ascending= True)

    groupperf_sorted.to_csv("../output/ salesperson_performance.csv", index= False)
except Exception as e:
    logging.error(e)

print(df)
logging.info("----------End of log----------")