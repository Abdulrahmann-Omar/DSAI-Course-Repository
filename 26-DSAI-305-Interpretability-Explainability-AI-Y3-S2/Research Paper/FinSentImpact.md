# FinSentImpact: A News-Driven Multi-Stock Forecasting Framework

![Python](https://img.shields.io/badge/Python-3.9%2B-blue)
![Machine Learning](https://img.shields.io/badge/Machine%20Learning-Finance-green)
![Explainable AI](https://img.shields.io/badge/XAI-SHAP%20%7C%20LIME-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

## 📌 Overview

**FinSentImpact** is a research-oriented, multimodal machine learning framework for **multi-stock price forecasting** that integrates **financial news sentiment** with **historical stock market data**. The framework emphasizes **interpretability** alongside performance, making it suitable for both academic research and practical financial analytics.

Unlike traditional price-only models, FinSentImpact fuses **textual sentiment features** derived from large-scale financial news with **time-series market indicators**, enabling more informed and explainable predictions.

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Key Contributions](#-key-contributions)
- [Framework Architecture](#️-framework-architecture)
- [Datasets](#-datasets)
- [Methodology](#️-methodology)
- [Machine Learning Models](#-machine-learning-models)
- [Results Summary](#-results-summary)
- [Explainable AI (XAI)](#-explainable-ai-xai)
- [Getting Started](#-getting-started)
- [Project Structure](#-project-structure)
- [Citation](#-citation)
- [Authors](#-authors)
- [License](#️-license)

---

## 🧠 Key Contributions

- 🔹 **Multimodal Learning**: Joint modeling of numerical stock data and textual financial news
- 🔹 **Multi-Stock Forecasting**: Scalable framework supporting dozens of companies
- 🔹 **Interpretable ML Models**: SVM, Random Forest, XGBoost, and Linear Regression
- 🔹 **State-of-the-Art XAI**: SHAP, LIME, PDP, ICE, permutation importance, and coefficient analysis
- 🔹 **Research-Grade Evaluation**: Temporal splits, robust metrics, and reproducibility

---

## 🏗️ Framework Architecture

```
Financial News (FNSPID) ──► NLP Preprocessing ──► Sentiment Features
                                               │
                                               ▼
Historical Stock Prices ──► Feature Engineering ─┬─► ML Models ──► Predictions
                                               │
                                               ▼
                                      Explainability (XAI)
```

---

## 📂 Datasets

### 1️⃣ Financial News and Stock Price Impact Dataset (FNSPID)

| Attribute | Details |
|-----------|---------|
| 📅 **Time Span** | 2009 – 2023 |
| 📰 **Size** | ~15.7M financial news records |
| 🏢 **Coverage** | ~50 major S&P 500 companies |
| 🧾 **Labels** | Positive / Negative sentiment |

> Source: Dong et al., *FNSPID: A Comprehensive Financial News Dataset in Time Series*

### 2️⃣ Historical Stock Market Data

| Attribute | Details |
|-----------|---------|
| 📈 **Features** | Open, High, Low, Close, Volume (OHLCV) |
| 📆 **Granularity** | Daily |
| 📊 **Source** | Public financial APIs (e.g., Yahoo Finance) |
| 📁 **Records** | ~1.2 million price records |

---

## 🛠️ Methodology

### 🔹 Textual Sentiment Processing

1. **Text Cleaning**: Lowercasing, stop-word removal, punctuation removal
2. **TF-IDF Vectorization**: Term frequency-inverse document frequency features
3. **Financial Lexicon Scoring**: Loughran-McDonald Financial Sentiment Lexicon
4. **N-gram Extraction**: Bigrams and trigrams for phrase-level sentiment

### 🔹 Time-Series Feature Engineering

- 30-day look-back window for trend capture
- Rolling-window statistics (daily, weekly price changes)
- Volume-based dynamics
- Min-Max normalization to [0, 1] range

### 🔹 Data Alignment

- Time-aware mapping of news to trading days
- Weighted aggregation of multiple daily news items
- Strict temporal train/test split (80/20) to prevent look-ahead bias

---

## 🤖 Machine Learning Models

| Model | Task | Strength | Explainability |
|-------|------|----------|----------------|
| **XGBoost** | Regression | Best overall performance | SHAP, LIME, PDP, ICE |
| **Random Forest** | Regression | Robust ensemble baseline | Feature Importance, PDP, LIME, Sensitivity |
| **SVM (RBF)** | Regression | Non-linear pattern capture | SHAP |
| **Linear Regression** | Regression | Maximum interpretability | Coefficients, ELI5, SHAP, PDP |

---

## 📈 Results Summary

| Model | R² Score | MSE | Notes |
|-------|----------|-----|-------|
| **XGBoost** | **~0.99** | **0.02–0.03** | Best handling of non-linear interactions |
| **Linear Regression** | ~0.99 | ~9.60 | Effective for stocks with strong linear trends |
| **Random Forest** | ~0.90 | ~9.50 | Robust baseline, struggled with extreme volatility |
| **SVM** | Variable | Variable | Good for high-dimensional spaces, computationally expensive |

### Key Influential Features

- 📊 Trading volume dynamics (`Volume_tomorrow`)
- 💹 Recent price movements (`Close`, `Close_tomorrow`)
- 📰 Financial news sentiment scores

---

## 🔍 Explainable AI (XAI)

FinSentImpact integrates **state-of-the-art explainability** techniques:

| Technique | Purpose |
|-----------|---------|
| **SHAP** | Global & local feature attribution using Shapley values |
| **LIME** | Instance-level explanations for individual predictions |
| **PDP** | Partial Dependence Plots for feature-response visualization |
| **ICE** | Individual Conditional Expectation plots |
| **Permutation Importance** | Robust importance ranking |
| **Coefficient Analysis** | Direct interpretation for linear models |
| **Sensitivity Analysis** | Testing robustness and identifying influential factors |

> This ensures **transparent, trustworthy predictions**, critical for financial decision-making.

---

## 🚀 Getting Started

### Installation

```bash
# Clone the repository
git clone https://github.com/Abdulrahmann-Omar/FinSentImpact-A-News-Driven-Multi-Stock-Forecasting-Framework.git
cd FinSentImpact

# Create virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

### Run Experiments

```bash
# Preprocess data
python src/preprocess_data.py --news_path data/FNSPID.csv --stock_path data/stocks.csv

# Train model
python src/train.py --model xgboost --ticker AAPL

# Evaluate with XAI
python src/evaluate.py --model_path models/xgboost_AAPL.pkl --plot_shap True
```

---

## 🏗 Project Structure

```
FinSentImpact/
│
├── data/
│   ├── raw/                 # Raw news & stock data
│   └── processed/           # Aligned and engineered features
│
├── notebooks/
│   ├── XAI-EDA.ipynb        # Exploratory data analysis
│   ├── XAI-SVM.ipynb        # SVM model with XAI
│   ├── XAI-Random Forest.ipynb
│   └── XAI-XGBoost.ipynb
│
├── src/
│   ├── preprocessing/       # Text & price preprocessing
│   ├── feature_engineering/ # Technical & sentiment features
│   ├── models/              # SVM, RF, XGBoost, Linear models
│   ├── evaluation/          # Metrics & validation
│   └── explainability/      # SHAP, LIME, PDP, ICE
│
├── results/
│   ├── metrics/             # Model performance results
│   └── figures/             # Plots & visualizations
│
├── requirements.txt
├── README.md
└── LICENSE
```

---

## 📜 Citation

If you use this work in your research, please cite:

```bibtex
@article{omar2024finsentimpact,
  title={FinSentImpact: A News-Driven Multi-Stock Forecasting Framework},
  author={Muhammad, Abdulrahman Omar and Elattar, Abdulrahman Mohammed},
  institution={Zewail City of Science and Technology},
  year={2024},
  note={GitHub Repository: https://github.com/Abdulrahmann-Omar/FinSentImpact-A-News-Driven-Multi-Stock-Forecasting-Framework}
}
```

---

## 👨‍💻 Authors

| Author | Affiliation |
|--------|-------------|
| **Abdulrahman Omar Muhammad** | DSAI Student, Zewail City of Science and Technology |
| **Abdulrahman Mohammed Elattar** | DSAI Student, Zewail City of Science and Technology |

---

## ⚖️ License

This project is licensed under the **MIT License** – see the [LICENSE](LICENSE) file for details.

---

## ⭐ Acknowledgments

- FNSPID Dataset Authors
- Open-source ML & XAI communities (SHAP, LIME, scikit-learn, XGBoost)
- IEEE & academic research contributors

---

> 🔬 *FinSentImpact bridges performance and interpretability, enabling transparent, multimodal financial forecasting.*
