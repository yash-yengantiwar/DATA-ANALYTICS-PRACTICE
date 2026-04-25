import pandas as pd

# Load dataset
df = pd.read_csv("data.csv")

# Basic info
print(df.head())
print(df.describe())

# Total revenue
total_revenue = df['Revenue'].sum()
print("Total Revenue:", total_revenue)

# Group by city
city_data = df.groupby('City')['Revenue'].sum()
print("\nRevenue by City:\n", city_data)

# Filter high revenue
high_rev = df[df['Revenue'] > 5000]
print("\nHigh Revenue Records:\n", high_rev.head())
