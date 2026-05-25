<div align="center">

<!-- Animated Banner -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=timeGradient&height=200&section=header&text=NBA%20Season%20Analytics&fontSize=50&fontColor=fff&animation=fadeIn&fontAlignY=38&desc=2023-2024%20Regular%20Season%20Performance%20Analysis&descAlignY=60&descAlign=50" width="100%"/>

<br/>

<!-- Badges -->
![Python](https://img.shields.io/badge/Python-3.11-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-2.0-150458?style=for-the-badge&logo=pandas&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Server-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)
![PowerBI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-In%20Progress-orange?style=for-the-badge)

<br/>

> **Who's really the best player of the 2023-24 NBA season — and does the data agree with the hype?**

</div>

---

## 🏀 Overview

This project is an end-to-end sports analytics pipeline analyzing the full **2023-2024 NBA Regular Season** dataset. It covers data cleaning, metric engineering, SQL-based querying, and interactive Power BI dashboards — all built to answer real basketball performance questions using data.

---

## 🎯 Key Questions Answered

| # | Question |
|---|----------|
| 1 | Who are the top performers by points, assists, and rebounds? |
| 2 | Which position dominates each statistical category? |
| 3 | Which teams have the strongest offensive output? |
| 4 | Who are the most *efficient* scorers — not just the highest scorers? |

---

## 🗂️ Project Structure

```
nba-season-analytics/
│
├── 📁 data/
│   ├── 2023-2024 NBA Player Stats - Regular.csv   ← raw dataset
│   └── nba_cleaned.csv                            ← cleaned output
│
├── 📁 notebooks/
│   └── 01_cleaning.ipynb                          ← cleaning & EDA
│
├── 📁 sql/
│   └── queries.sql                                ← analytical queries
│
├── 📁 dashboard/
│   └── nba_dashboard.pbix                         ← Power BI file
│
└── 📄 README.md
```

---

## ⚙️ Tech Stack

| Tool | Purpose |
|------|---------|
| **Python (pandas, matplotlib, seaborn)** | Data cleaning & exploration |
| **SQL** | Aggregations, rankings, KPI queries |
| **Power BI** | Interactive dashboards |
| **Jupyter Notebook** | Analysis environment |
| **VS Code** | Development environment |

---

## 📊 Engineered Metrics

Beyond the raw stats, three custom performance metrics were created:

- **Points Per Minute (PTS/MIN)** — Normalizes scoring output by actual playing time, not just games played
- **Player Efficiency Score** — Composite metric combining PTS + TRB + AST + STL + BLK − TOV
- **True Shooting % (TS%)** — Accounts for 2-pointers, 3-pointers, and free throws to measure real scoring efficiency

---

## 🚀 Getting Started

### 1. Clone the repo
```bash
git clone https://github.com/MohamedAkram-M/nba-season-analytics.git
cd nba-season-analytics
```

### 2. Set up the environment
```powershell
.\scripts\setup.ps1
```

### 3. Launch the notebook
```bash
jupyter notebook notebooks/01_cleaning.ipynb
```

### 4. Dataset
Download from Kaggle: [2023-2024 NBA Player Stats](https://www.kaggle.com/datasets/vivovinco/2023-2024-nba-player-stats) and place the CSV in the `/data` folder.

---

## 📈 Dashboard Preview

> Power BI dashboard coming soon — will feature:
> - Player leaderboard with dynamic slicers by team and position
> - Efficiency vs. scoring scatter plot
> - Team-level offensive output comparison
> - Position breakdown across all key stats

---

## 👤 Author

**Mohamed Akram**
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin)](https://linkedin.com/in/mohamed-akram-71a3b831b/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github)](https://github.com/MohamedAkram-M)

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=timeGradient&height=100&section=footer" width="100%"/>

</div>