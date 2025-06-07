from dotenv import load_dotenv
import os

load_dotenv()

import pandas as pd
import psycopg2

# Load the cleaned CSV
df = pd.read_csv("data/bank_reviews_with_sentiment.csv")

# Map bank names to IDs
bank_map = {
    "Commercial Bank of Ethiopia": 1,
    "Bank of Abyssinia": 2,
    "Dashen Bank": 3
}
df["bank_id"] = df["bank"].map(bank_map)

# Connect to PostgreSQL
conn = psycopg2.connect(
    dbname="bank_reviews",
    user="postgres",
    password=os.getenv("MY_POSTGRES_PASSWORD"),
    host="localhost",
    port="5432"
)
cur = conn.cursor()

# Insert bank names (only needed once)
cur.execute("INSERT INTO banks (name) VALUES (%s) ON CONFLICT DO NOTHING", ("Commercial Bank of Ethiopia",))
cur.execute("INSERT INTO banks (name) VALUES (%s) ON CONFLICT DO NOTHING", ("Bank of Abyssinia",))
cur.execute("INSERT INTO banks (name) VALUES (%s) ON CONFLICT DO NOTHING", ("Dashen Bank",))

# Insert reviews
for _, row in df.iterrows():
    cur.execute("""
        INSERT INTO reviews (review_text, rating, review_date, sentiment_label, sentiment_score, bank_id)
        VALUES (%s, %s, %s, %s, %s, %s)
    """, (
        row["review"],
        int(row["rating"]),
        row["date"],
        row["sentiment_label"],
        float(row["sentiment_score"]),
        int(row["bank_id"])
    ))

conn.commit()
cur.close()
conn.close()

print("✅ Inserted reviews into PostgreSQL.")
