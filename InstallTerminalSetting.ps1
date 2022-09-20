"Instalamos el Gestor de paquetes Scope"

Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
scoop isntall curl sudo jq

"Instalamos Git"
winget install -e --id Git.Git

"Instalamos NeoVim"
scoop install neovim gcc

"Instalamos posh-git"
Install-Module posh-git -Scope CurrentUser -Force

"Instalamos Oh-my-posh"
Set-ExecutionPolicy Bypass -Scope Process -Force Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

"Creamos la carpeta de powershell en la raiz de usuarios"
mkdir .config/powershell

"Creamo la carpeta PowerShell en documentos"
mkdir .\Documents\PowerShell

"Instalamos Node"
scoope install nvm

"Instalamos el modulo de Iconos"
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

"Instalamos z Directory"
Install-Module -Name z -Force

"Instalamos PSReadLine"
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

"Instalamos fzf"
scoop isntall fzf

"Instalamos PSFzf"
Install-Module -Name PSFzf -Scope CurrentUser -Force

"Instalamos bat"
scoop install bat
