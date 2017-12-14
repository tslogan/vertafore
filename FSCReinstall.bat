@echo off
rem This script automatically reinstalls and updates FSC Rater.
rem Self extracting installer FSCRater_CA_135.exe must be used. 
rem Created by Sharay Logan

echo Locating FSC...
for /f "tokens=3" %%a in (
    'reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\FSC_DATA\Shell\Open\Command"  /V ""  ^|findstr /ri "REG_SZ"'
) do set SourcePath=%%a
set FSCPath=%SourcePath:~0,-16%
echo Found FSC at %FSCPath%

echo Preparing for install...

setlocal enableDelayedExpansion
set "baseName=Program"
set "n=0"
for /f "delims=" %%F in (
  '2^>nul dir /b /ad "%FSCPath%\%baseName%*."^|findstr /xri "%baseName%[0-9]*"'
) do (
  set "name=%%F"
  set "name=!name:*%baseName%=!"
  if !name! gtr !n! set "n=!name!"
)
set /a n+=1
ren "%FSCPath%\Program" "%baseName%%n%"

echo Launching FSC Rater installer and updating program...
"%userprofile%\Desktop\FSCRater_CA_135.exe"

echo [PATCHES] > "%FSCPath%\Program\ftpupdt.ini"
echo InternetSite=HTTPS://www.fscrater.com/private/fsc/ >> "%FSCPath%\Program\ftpupdt.ini"

echo Updating FSC Rater...
"%FSCPath%\Program\ftpupdt.exe"
del stats.txt

echo Done
