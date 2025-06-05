import pandas as pd
from sklearn.feature_extraction.text import TfidfVectorizer
import spacy

# Load spaCy for preprocessing
nlp = spacy.load("en_core_web_sm")

# Load review data
df = pd.read_csv("data/bank_reviews_with_sentiment.csv")

print(f"Loaded {len(df)} reviews")


# Preprocess text: remove stopwords, lemmatize
def preprocess(text):
    doc = nlp(text.lower())
    tokens = [token.lemma_ for token in doc if not token.is_stop and token.is_alpha]
    return " ".join(tokens)

df["processed_review"] = df["review"].astype(str).apply(preprocess)

from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np

# Extract keywords using TF-IDF
vectorizer = TfidfVectorizer(max_features=10_000, ngram_range=(1, 2))
X = vectorizer.fit_transform(df["processed_review"])

# Get top keywords by TF-IDF score
feature_names = vectorizer.get_feature_names_out()
tfidf_scores = np.asarray(X.mean(axis=0)).ravel()
top_n = 20
top_indices = tfidf_scores.argsort()[::-1][:top_n]
top_keywords = [(feature_names[i], tfidf_scores[i]) for i in top_indices]

print("\n🔑 Top Keywords:")
for kw, score in top_keywords:
    print(f"{kw} → {score:.4f}")

banks = df["bank"].unique()

for bank in banks:
    print(f"\n📊 Top keywords for {bank}:")
    bank_reviews = df[df["bank"] == bank]["processed_review"]
    
    # Vectorize
    vec = TfidfVectorizer(max_features=5_000, ngram_range=(1, 2))
    X = vec.fit_transform(bank_reviews)
    
    # Extract top n
    names = vec.get_feature_names_out()
    scores = np.asarray(X.mean(axis=0)).ravel()
    top_n = 15
    indices = scores.argsort()[::-1][:top_n]
    top_kw = [(names[i], scores[i]) for i in indices]
    
    for kw, s in top_kw:
        print(f"{kw} → {s:.4f}")

df.to_csv("data/bank_reviews_with_themes.csv", index=False)
print("✅ Saved to data/bank_reviews_with_themes.csv")
