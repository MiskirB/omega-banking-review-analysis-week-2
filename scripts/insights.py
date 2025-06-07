import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import os

# 📥 Load the sentiment-labeled review dataset
df = pd.read_csv("data/bank_reviews_with_sentiment.csv")

# Ensure the sentiment_score column is treated as numeric
df["sentiment_score"] = pd.to_numeric(df["sentiment_score"], errors='coerce')

# 🧮 Compute average sentiment score grouped by rating and bank
avg_sentiment = df.groupby(["bank", "rating"])["sentiment_score"].mean().reset_index()

# 📊 Plot average sentiment score by rating for each bank
plt.figure(figsize=(10, 6))
sns.lineplot(data=avg_sentiment, x="rating", y="sentiment_score", hue="bank", marker="o")
plt.title("Average Sentiment Score by Rating")
plt.xlabel("Rating (1–5 stars)")
plt.ylabel("Average Sentiment Score")
plt.ylim(0.5, 1.0)
plt.grid(True)
plt.tight_layout()

# ✅ Save the figure
os.makedirs("outputs", exist_ok=True)
plt.savefig("outputs/sentiment_by_rating.png", dpi=300)
plt.show()

# 📊 Rating distribution per bank
plt.figure(figsize=(10, 6))
sns.countplot(data=df, x="rating", hue="bank", palette="Set2")
plt.title("Rating Distribution by Bank")
plt.xlabel("Rating (1–5 Stars)")
plt.ylabel("Number of Reviews")
plt.grid(axis='y')
plt.tight_layout()
plt.savefig("outputs/rating_distribution_by_bank.png", dpi=300)
plt.show()

# 📊 Sentiment label distribution by bank
sentiment_dist = df.groupby(["bank", "sentiment_label"]).size().reset_index(name="count")
plt.figure(figsize=(10, 6))
sns.barplot(data=sentiment_dist, x="bank", y="count", hue="sentiment_label")
plt.title("Sentiment Label Distribution by Bank")
plt.ylabel("Number of Reviews")
plt.xlabel("Bank")
plt.xticks(rotation=15)
plt.tight_layout()
plt.savefig("outputs/sentiment_label_distribution.png", dpi=300)
plt.show()

# 🧠 Word Cloud of keywords
from wordcloud import WordCloud

if "processed_review" in df.columns:
    text = " ".join(df["processed_review"].dropna())
else:
    text = " ".join(df["review"].astype(str).dropna())

wordcloud = WordCloud(width=1200, height=600, background_color="white", collocations=False).generate(text)

plt.figure(figsize=(12, 6))
plt.imshow(wordcloud, interpolation="bilinear")
plt.axis("off")
plt.title("🧠 Word Cloud of Common Review Keywords", fontsize=16)
plt.tight_layout()
plt.savefig("outputs/keyword_wordcloud.png", dpi=300)
plt.show()

# 🔍🧠 THEMES SUMMARY TABLE (based on TF-IDF keywords)
from sklearn.feature_extraction.text import TfidfVectorizer
from collections import defaultdict

# Predefined themes with representative keywords
themes_keywords = {
    "UI/UX Experience": ["easy", "clean", "interface", "design", "nice"],
    "Performance Stability": ["fast", "crash", "slow", "lag", "bug"],
    "Transaction Services": ["login", "transfer", "balance", "pay", "error"],
    "Super App Features": ["super", "app", "all-in-one"],
    "Reliability Concerns": ["issue", "problem", "fail"],
}

# Lowercase all reviews
df["review"] = df["review"].astype(str).str.lower()

theme_summary = []

for bank in df["bank"].unique():
    reviews = df[df["bank"] == bank]["review"]
    vectorizer = TfidfVectorizer(max_features=200, stop_words="english")
    X = vectorizer.fit_transform(reviews)
    keywords = vectorizer.get_feature_names_out()

    theme_hits = defaultdict(list)
    for theme, keywords_list in themes_keywords.items():
        for kw in keywords:
            if any(word in kw for word in keywords_list):
                theme_hits[theme].append(kw)

    for theme, matched in theme_hits.items():
        theme_summary.append({
            "Bank": bank,
            "Theme": theme,
            "Keywords": ", ".join(sorted(set(matched)))
        })

themes_df = pd.DataFrame(theme_summary)
themes_df.to_csv("outputs/themes_summary_table.csv", index=False)

print("\n🧠 Saved theme summary table to: outputs/themes_summary_table.csv")
print(themes_df.head(10))
