######################################################
# Install ERIS-CERT Apps
######################################################
Write-Host "Installing Chocolatey"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host

Write-Host "Installing applications from Chocolatey"
cinst googlechrome -y
cinst adobereader -y
cinst firefox -y
cinst python -y
cinst sublimetext3 -y
cinst ultravnc -y
cinst wireshark -y
cinst putty -y
cinst 7zip -y
cinst Firefox -y
cinst PowerShell -y
cinst sysmon -y
cinst wireshark -y
cinst zap -y
cinst sysinternals -y
cinst mobaxterm -y
cinst burp-suite-free-edition -y
cinst nmap -y
cinst rocketchat -y
cinst bitwarden -y
cinst git -y
cinst sublimetext2.app -y
cinst vscode -y
cinst docker -y
Write-Host
