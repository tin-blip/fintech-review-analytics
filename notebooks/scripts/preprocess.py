import pandas as pd

df = pd.read_csv("data/raw/raw_reviews.csv")

print("Initial Shape:", df.shape)

# Drop duplicates
df = df.drop_duplicates()

# Remove missing values
df = df.dropna(subset=["review", "rating"])

# Normalize dates
df["date"] = pd.to_datetime(df["date"]).dt.strftime("%Y-%m-%d")

# Save cleaned dataset
df.to_csv("data/raw/cleaned_reviews.csv", index=False)

print("Cleaned Shape:", df.shape)

print("Preprocessing completed.")