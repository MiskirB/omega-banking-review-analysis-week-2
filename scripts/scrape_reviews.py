from google_play_scraper import reviews, Sort
import pandas as pd
from datetime import datetime
import os

# App IDs and names
apps = {
    "Commercial Bank of Ethiopia": "com.combanketh.mobilebanking",
    "Bank of Abyssinia": "com.boa.boaMobileBanking",
    "Dashen Bank": "com.dashen.dashensuperapp"
}


# Store all reviews
all_reviews = []

for bank_name, app_id in apps.items():
    print(f"Scraping reviews for: {bank_name}")
    result, _ = reviews(
        app_id,
        lang='en',
       country='et',
        count=500,
        sort=Sort.NEWEST
    )
    
    print(f"→ Retrieved {len(result)} reviews for {bank_name}")


    for r in result:
        all_reviews.append({
            "review": r['content'],
            "rating": r['score'],
            "date": r['at'].strftime('%Y-%m-%d'),
            "bank": bank_name,
            "source": "Google Play"
        })

# Convert to DataFrame
df = pd.DataFrame(all_reviews)

# Preprocessing
df.drop_duplicates(subset="review", inplace=True)
df.dropna(inplace=True)

# Create output folder if not exist
os.makedirs("data", exist_ok=True)

# Save to CSV
output_path = "data/bank_reviews.csv"
df.to_csv(output_path, index=False)
print(f"Saved cleaned reviews to {output_path}")
