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

![Dataset](https://img.shields.io/badge/Dataset-450%2B%20Players-1d428a?style=flat-square)
![Season](https://img.shields.io/badge/Season-2023--2024-c8102e?style=flat-square)
![Stats](https://img.shields.io/badge/Stats-30%20Columns-green?style=flat-square)

<br/>

> ### 🏀 A roster efficiency analysis tool for NBA coaching staff and front offices — identifying positional mismatches, contract value, and offensive output across the 2023–24 season.

</div>

---

## 📌 Overview

This project goes beyond typical stats leaderboards. It is designed as a **business intelligence tool for NBA organizations** — helping coaches and front offices make smarter decisions about roster construction, player deployment, and contract value.

Built on the full 2023–2024 NBA Regular Season dataset across 450+ players and 30 statistical columns, the pipeline covers data cleaning, custom metric engineering, SQL-based querying, and an interactive Power BI dashboard.

---

## 🎯 Business Questions

| # | Question | Business Value |
|---|----------|---------------|
| 1 | **Position Dominance** — Which position leads each stat category? | Benchmark players against position peers & set role expectations |
| 2 | **Team Offensive Output** — Which franchises produce the most scoring? | Compare roster output against the league to identify offensive gaps |
| 3 | **Position Outliers** — Which players don't fit their position statistically? | Identify versatile players and tactical mismatches for coaching advantage |
| 4 | **Dead Weight** — Which high-minute players hurt more than they help? | Flag bad contracts and inefficient roster spots for front office decisions |

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
- **Efficiency Score** — Composite metric combining PTS + TRB + AST + STL + BLK − TOV
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
> - Position dominance breakdown across all key stats
> - Team offensive output league-wide comparison
> - Position outlier scatter plots by z-score
> - Dead weight flagging by minutes vs efficiency

---

## 👤 Author

**Mohamed Akram**
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0A66C2?style=flat&logo=linkedin)](https://linkedin.com/in/mohamed-akram-71a3b831b/)
[![GitHub](https://img.shields.io/badge/GitHub-Follow-181717?style=flat&logo=github)](https://github.com/MohamedAkram-M)
[![Email](https://img.shields.io/badge/Email-Contact-EA4335?style=flat&logo=gmail)](mailto:ma6858349@gmail.com)

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=1d428a,c8102e&height=120&section=footer" width="100%"/>

</div>