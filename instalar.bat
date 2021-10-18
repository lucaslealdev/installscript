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
ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando XAMPP
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install xampp-80 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando GIT
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install git -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando NodeJS
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install nodejs.install -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Python
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install python -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Composer
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install composer -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Filezilla
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install filezilla -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Putty
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install putty -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Windows Terminal
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install microsoft-windows-terminal -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando MySQL Workbench
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install mysql.workbench -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando MongoDB
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install mongodb.install -y
choco install mongodb-compass -y
choco install mongodb-database-tools -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Sublime Text
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install sublimetext4 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando XN Convert
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install xnconvert -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando GitKraken
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install gitkraken -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando HeidiSQL
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install heidisql -y

ECHO Copiando dados do Sublime
xcopy "Sublime Text" "%public%\..\%LoggedInUserID%\AppData\Roaming\Sublime Text\" /E /C /H /Y

ECHO Copiando dados do XAMPP
xcopy "php" "%HOMEDRIVE%\xampp\php\" /E /C /H /Y
GOTO MENU

:UTILS
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Brave Browser
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install brave -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando VC Redist
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install vcredist140 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando 7zip
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install 7zip -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Google drive
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install google-drive-file-stream -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando K-Lite codec
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install k-litecodecpackfull -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Update de seguranca
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install kb2533623 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Audacity
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install audacity -y


ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Teracopy
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install teracopy -y

GOTO MENU

:ALL
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando XAMPP
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install xampp-80 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Brave Browser
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install brave -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando VC Redist
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install vcredist140 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando 7zip
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install 7zip -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando GIT
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install git -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando NodeJS
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install nodejs.install -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Python
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install python -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Google drive
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install google-drive-file-stream -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Composer
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install composer -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Filezilla
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install filezilla -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Putty
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install putty -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando K-Lite codec
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install k-litecodecpackfull -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Windows Terminal
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install microsoft-windows-terminal -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Update de seguranca
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install kb2533623 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Audacity
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install audacity -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando MySQL Workbench
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install mysql.workbench -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando MongoDB
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install mongodb.install -y
choco install mongodb-compass -y
choco install mongodb-database-tools -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Sublime Text
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install sublimetext4 -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando XN Convert
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install xnconvert -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando GitKraken
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install gitkraken -y

ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando HeidiSQL
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install heidisql -y


ECHO .
ECHO .
ECHO .
ECHO =================================
ECHO Instalando Teracopy
ECHO =================================
ECHO .
ECHO .
ECHO .
ECHO .
choco install teracopy -y

ECHO Copiando dados do Sublime
xcopy "Sublime Text" "%public%\..\%LoggedInUserID%\AppData\Roaming\Sublime Text\" /E /C /H /Y

ECHO Copiando dados do XAMPP
xcopy "php" "%HOMEDRIVE%\xampp\php\" /E /C /H /Y
GOTO MENU