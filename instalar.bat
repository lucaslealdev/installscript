ECHO OFF
pushd %~dp0
chcp 65001
for /f "TOKENS=1,3,*" %%a in ('tasklist /FI "IMAGENAME eq explorer.exe" /FO LIST /V') do if /i "%%a %%b"=="Nome usuário:" (set domain_user=%%c)
for /f "TOKENS=1,2 DELIMS=\" %%a in ("%domain_user%") do set domain=%%a && set LoggedInUserID=%%b
:MENU
CLS
ECHO.
ECHO ...............................................
ECHO DIGITE UMA OPCAO OU 0 PARA SAIR.
ECHO ...............................................
ECHO.
ECHO 1 - Instalar todos os programas
ECHO 2 - Instalar apenas o chocolatey
ECHO 3 - Instalar apenas programas de desenvolvimento
ECHO 4 - Instalar apenas utilitarios
ECHO 0 - SAIR
ECHO.
SET /P M=Digite 1,2,3,4, ou 0 e aperte ENTER:
IF %M%==1 GOTO ALL
IF %M%==2 GOTO CHOCO
IF %M%==3 GOTO DEV
IF %M%==4 GOTO UTILS
IF %M%==0 GOTO EOF

:CHOCO
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
PAUSE
GOTO MENU

:DEV
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO Instalando XAMPP
choco install xampp-80 -y

ECHO Instalando GIT
choco install git -y

ECHO Instalando NodeJS
choco install nodejs.install -y

ECHO Instalando Python
choco install python -y

ECHO Instalando Composer
choco install composer -y

ECHO Instalando Filezilla
choco install filezilla -y

ECHO Instalando Putty
choco install putty -y

ECHO Instalando Windows Terminal
choco install microsoft-windows-terminal -y

ECHO Instalando MySQL Workbench
choco install mysql.workbench -y

ECHO Instalando Sublime Text
choco install sublimetext4 -y

ECHO Instalando GitKraken
choco install gitkraken -y

ECHO Instalando HeidiSQL
choco install heidisql -y

ECHO Copiando dados do Sublime
xcopy "Sublime Text" "%public%\..\%LoggedInUserID%\AppData\Roaming\Sublime Text\" /E /C /H /Y

ECHO Copiando dados do XAMPP
xcopy "php" "%HOMEDRIVE%\xampp\php\" /E /C /H /Y
GOTO MENU

:UTILS
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO Instalando Brave Browser
choco install brave -y

ECHO Instalando VC Redist
choco install vcredist140 -y

ECHO Instalando 7zip
choco install 7zip -y

ECHO Instalando Google drive
choco install google-drive-file-stream -y

ECHO Instalando K-Lite codec
choco install k-litecodecpackfull -y

ECHO Instalando Update de seguranca
choco install kb2533623 -y

ECHO Instalando Audacity
choco install audacity -y

ECHO Instalando Iniciar classico
choco install classic-shell -installArgs ADDLOCAL=ClassicStartMenu -y

ECHO Instalando Teracopy
choco install teracopy -y

GOTO MENU

:ALL
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO Instalando XAMPP
choco install xampp-80 -y

ECHO Instalando Brave Browser
choco install brave -y

ECHO Instalando VC Redist
choco install vcredist140 -y

ECHO Instalando 7zip
choco install 7zip -y

ECHO Instalando GIT
choco install git -y

ECHO Instalando NodeJS
choco install nodejs.install -y

ECHO Instalando Python
choco install python -y

ECHO Instalando Google drive
choco install google-drive-file-stream -y

ECHO Instalando Composer
choco install composer -y

ECHO Instalando Filezilla
choco install filezilla -y

ECHO Instalando Putty
choco install putty -y

ECHO Instalando K-Lite codec
choco install k-litecodecpackfull -y

ECHO Instalando Windows Terminal
choco install microsoft-windows-terminal -y

ECHO Instalando Update de seguranca
choco install kb2533623 -y

ECHO Instalando Audacity
choco install audacity -y

ECHO Instalando MySQL Workbench
choco install mysql.workbench -y

ECHO Instalando Sublime Text
choco install sublimetext4 -y

ECHO Instalando GitKraken
choco install gitkraken -y

ECHO Instalando HeidiSQL
choco install heidisql -y

ECHO Instalando Iniciar classico
choco install classic-shell -installArgs ADDLOCAL=ClassicStartMenu -y

ECHO Instalando Teracopy
choco install teracopy -y

ECHO Copiando dados do Sublime
xcopy "Sublime Text" "%public%\..\%LoggedInUserID%\AppData\Roaming\Sublime Text\" /E /C /H /Y

ECHO Copiando dados do XAMPP
xcopy "php" "%HOMEDRIVE%\xampp\php\" /E /C /H /Y
GOTO MENU