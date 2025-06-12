# -Tiny-Sql-Database-using-Python
Use SQL inside Python to pull simple sales info (like total quantity sold, total revenue), and display it using basic print statements and a simple bar chart.
## Dataset
Create a small SQLite database file (sales_data.db) with just one sales table
## Task
1-Load SQLite database: import sqlite3 conn = sqlite3.connect("sales_data.db").

2-Run basic SQL: query = "SELECT product, SUM(quantity) AS total_qty, SUM(quantity * price) AS
revenue FROM sales GROUP BY product".

3-Load into pandas: import pandas as pd df = pd.read_sql_query(query, conn).

4-Print results: print(df).

5-Plot simple bar chart: df.plot(kind='bar', x='product', y='revenue').

6-Save chart if needed: plt.savefig("sales_chart.png").
