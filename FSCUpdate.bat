@echo off
rem This script updates FSC Rater.
rem Created by Sharay Logan

echo Locating FSC...
for /f "tokens=3" %%a in (
    'reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\FSC_DATA\Shell\Open\Command"  /V ""  ^|findstr /ri "REG_SZ"'
) do set SourcePath=%%a
set FSCPath=%SourcePath:~0,-16%
echo Found FSC at %FSCPath%

echo [PATCHES] > "%FSCPath%\Program\ftpupdt.ini" 
echo InternetSite=HTTPS://www.fscrater.com/private/fsc/ >> "%FSCPath%\Program\ftpupdt.ini"

echo Updating FSC Rater...
"%FSCPath%\Program\ftpupdt.exe"
del stats.txt

echo Done
