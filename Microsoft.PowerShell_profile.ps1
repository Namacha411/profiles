Invoke-Expression (&starship init powershell)
$OutputEncoding = [System.Text.Encoding]::GetEncoding('utf-8')

# env path
$ENV:Path+=";C:\Users\thdyk\flutter\bin"

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

function touch() {
  New-Item -Type File $args
}

Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -HistoryNoDuplicates
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key "Ctrl+f" -Function ForwardWord

Set-Alias clion "C:\Users\thdyk\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.5457.51\bin\clion64.exe"
Set-Alias sudo gsudo

Set-Alias ls exa
Set-Alias cat bat
Set-Alias find fd
Set-Alias od hexyl
Set-Alias ps procs
Set-Alias grep rg
Set-Alias unzip Expand-Archive
