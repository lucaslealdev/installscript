@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
refreshenv
choco install xampp-80 -y
refreshenv
choco install composer -y
choco install brave -y
choco install vcredist140 -y
choco install 7zip -y
choco install git -y
choco install python -y
choco install google-drive-file-stream -y
choco install nodejs.install -y
choco install filezilla -y
choco install libreoffice-fresh -y
choco install putty -y
choco install k-litecodecpackfull -y
choco install microsoft-windows-terminal -y
choco install kb2533623 -y
choco install audacity -y
choco install mysql.workbench -y
choco install sublimetext4 -y
choco install gitkraken -y
choco install heidisql -y