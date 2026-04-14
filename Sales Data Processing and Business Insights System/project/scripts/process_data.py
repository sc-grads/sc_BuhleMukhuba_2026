import pandas as pd 
import numpy as np
from datetime import datetime
import sys
import os

df = pd.read_csv("../data/Messy_Sales_Data.csv")

#Print uncleaned structure of the data
print(df.head())     
print(df.columns)    
print(df.info())

print(df)

#Data Cleaning
#Check for missing values

print(df.isnull().sum())

#Handle missing values

df = df.fillna({"salesperson" : "Unknown"})

df = df.fillna({"quantity" : round(df["quantity"].mean(numeric_only= True))})

print(df)
print(df.isnull().sum())

# Removing duplicates

print(df[df.duplicated()])

df = df.drop_duplicates().reset_index(drop= True)
df.index = df.index + 1 

#Standardising Formats

#Date data type to date

df["date"] = pd.to_datetime(df["date"])

df["quantity"] = df["quantity"].astype(int)
 
print(df.info())

print(df)
