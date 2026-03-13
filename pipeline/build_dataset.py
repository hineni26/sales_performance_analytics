import pandas as pd
import sqlite3

# Load processed dataset
df = pd.read_csv("../data/processed/sales_performance_final.csv")

# Connect to SQLite database
conn = sqlite3.connect("../data/sales.db")

# Write to database
df.to_sql("sales_data", conn, if_exists="replace", index=False)

print("Dataset successfully loaded into SQLite database.")