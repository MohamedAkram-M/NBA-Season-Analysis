# NBA DataAnalysis — Jupyter project setup

This project contains NBA data and Jupyter notebooks. These steps create a reproducible local environment and register a kernel for the notebooks.

Quick setup (PowerShell):

1. Create and activate a virtual environment, install dependencies, and register the kernel:

```powershell
.\scripts\create_venv.ps1
```

2. Start Jupyter Lab or Notebook:

```powershell
jupyter lab
# or
jupyter notebook
```

If you prefer manual steps:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
pip install -r requirements.txt
python -m ipykernel install --user --name nba-dataanalysis --display-name "NBA DataAnalysis"
```

Now open `notebooks/exploration.ipynb` and select the "NBA DataAnalysis" kernel.
