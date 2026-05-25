Param(
    [string]$VenvName = ".venv",
    [string]$KernelName = "nba-dataanalysis",
    [string]$DisplayName = "NBA DataAnalysis"
)

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $scriptDir

python -m venv $VenvName
& "$VenvName\Scripts\Activate.ps1"
python -m pip install --upgrade pip
pip install -r "$(Resolve-Path "$scriptDir\..\requirements.txt")"
python -m ipykernel install --user --name $KernelName --display-name $DisplayName

Write-Host "Setup complete. Activate the venv with: & '$VenvName\Scripts\Activate.ps1' and run 'jupyter lab' or 'jupyter notebook'." -ForegroundColor Green