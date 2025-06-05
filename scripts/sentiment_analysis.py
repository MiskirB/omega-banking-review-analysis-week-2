import pandas as pd
from transformers import pipeline
import os
import time

# === CONFIG ===
INPUT_CSV = "data/bank_reviews.csv"
OUTPUT_CSV = "data/bank_reviews_with_sentiment.csv"
CHUNK_SIZE = 200  # process reviews in batches to avoid memory issues

# === LOAD DATA ===
print(f"📥 Loading reviews from {INPUT_CSV}...")
df = pd.read_csv(INPUT_CSV)
print(f"✅ Loaded {len(df)} reviews")

# === LOAD SENTIMENT MODEL ===
print("⚙️ Loading sentiment analysis model (DistilBERT)...")
sentiment_pipeline = pipeline("sentiment-analysis", model="distilbert-base-uncased-finetuned-sst-2-english")
print("✅ Model loaded. Starting sentiment analysis...")

# === DEFINE ANALYSIS FUNCTION ===
def analyze_sentiment(text):
    try:
        result = sentiment_pipeline(text[:512])[0]
        return pd.Series([result["label"].lower(), result["score"]])
    except Exception as e:
        return pd.Series([None, None])

# === PROCESS IN CHUNKS ===
sentiment_labels = []
sentiment_scores = []

total = len(df)
for start in range(0, total, CHUNK_SIZE):
    end = min(start + CHUNK_SIZE, total)
    print(f"🔍 Processing reviews {start + 1} to {end}...")

    chunk = df.iloc[start:end]
    results = chunk["review"].apply(lambda x: analyze_sentiment(str(x)))
    labels, scores = zip(*results.values)

    sentiment_labels.extend(labels)
    sentiment_scores.extend(scores)

    time.sleep(1)  # prevent memory pressure spikes

# === ADD RESULTS TO DATAFRAME ===
df["sentiment_label"] = sentiment_labels
df["sentiment_score"] = sentiment_scores

# === CLEAN + SAVE ===
df.dropna(subset=["sentiment_label"], inplace=True)

os.makedirs("data", exist_ok=True)
df.to_csv(OUTPUT_CSV, index=False)
print(f"\n✅ Sentiment analysis complete!")
print(f"💾 Saved to {OUTPUT_CSV}")
