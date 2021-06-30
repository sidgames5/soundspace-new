@echo off
set dfgkjggdjlgguegsdjkghfuirdhg=version.txt
echo Current SoundSpace version: %more version.txt%
set old=more version.txt
echo Detecting latest version...
powershell -Command Invoke-WebRequest nul dfgkjggdjlgguegsdjkghfuirdhg > nul
echo Latest version: %more version.txt%