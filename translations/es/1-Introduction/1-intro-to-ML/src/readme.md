python -m venv .venv

# Win
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\.venv\Scripts\Activate.ps1 
Get-Command python
Get-Command pip
Get-Command git
Get-Command code

# Linux
source .venv/bin/activate
which python
which pip
which git
which code

pip install openai
pip freeze > requirements.txt
pip install -r requirements.txt
deactivate

# happy coding! :-)

```
$env:AZURE_OPENAI_API_KEY="xxxxxxxxxxxxxxxxxxxx"
$env:AZURE_OPENAI_ENDPOINT="https://xxxxxxxxxxxxxxx.services.ai.azure.com/openai/v1"
$env:AZURE_OPENAI_DEPLOYNAME="gpt-5-mini"
```
# Just for debug :-)