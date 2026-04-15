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

df = pd.read_csv("../data/Messy_Sales_Data.csv")
logging.info("----------Beginning of log----------")

logging.info("Displaying uncleaned structure of the data")   
print(df.info())

print(df)

#Data Cleaning
logging.info("Data Validation - Checking for missing values")

print(df.isnull().sum())

logging.info("Handling missing values")

df = df.fillna({"salesperson" : "Unknown"})

df = df.fillna({"quantity" : round(df["quantity"].mean(numeric_only= True))})

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

#Revenue
df["revenue"] = df["price"] * df["quantity"]

#Month from date
df["month"] = pd.to_datetime(df["date"]).dt.strftime("%B")

#Organise columns
df = df[["transaction_id", "date", "month", "product", "category", "quantity", "price", "revenue", "region", "salesperson"]]

logging.info("Exporting clean dataset")

df.to_csv("../output/ clean_sales.csv", index= False)

logging.info("Data Aggregation")
#Sales by region

groupregion = df.groupby("region")["revenue"].sum()

groupregion_df = groupregion.reset_index()
groupregion_sorted = groupregion_df.sort_values(by="region", ascending= True)

groupregion_sorted.to_csv("../output/ sales_by_region.csv", index= False)

#Sales by product

groupprod = df.groupby("product")["revenue"].sum()

groupprod_df = groupprod.reset_index()
groupprod_sorted = groupprod_df.sort_values(by="revenue", ascending= False)

groupprod_sorted.to_csv("../output/ sales_by_product.csv", index= False)

#Monthly revenue

grouprev = df.groupby("month")["revenue"].sum()

grouprev_df = grouprev.reset_index()
grouprev_sorted = grouprev_df.sort_values(by="revenue", ascending= False)

grouprev_sorted.to_csv("../output/ monthly_revenue.csv", index= False)

#Salesperson performance

groupperf = df.groupby("salesperson")["revenue"].sum()

groupperf_df = groupperf.reset_index()
groupperf_sorted = groupperf_df.sort_values(by="salesperson", ascending= True)

groupperf_sorted.to_csv("../output/ salesperson_performance.csv", index= False)

print(df)
logging.info("----------End of log----------")