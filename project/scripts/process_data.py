import pandas as pd
import numpy as np
import sys
import os

df = pd.read_csv("C:\sc_BuhleMukhuba_2026\project\data\Sales_data.csv")

pd.set_option('display.max_rows', None)
pd.set_option('display.max_columns', None)

print(df)