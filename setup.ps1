# Setup Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install Applications through chocolatey
choco install git
choco install vscode
choco install wsl
choco install wsl-ubuntu-2204
choco install dotnet
choco install golang
choco install rust

# Setup vscode
Push-Location -Path "./vscode"
./setup_vscode.ps1
Pop-Location

# Setup git
Push-Location -Path "./git"
./setup_git.ps1
Pop-Location