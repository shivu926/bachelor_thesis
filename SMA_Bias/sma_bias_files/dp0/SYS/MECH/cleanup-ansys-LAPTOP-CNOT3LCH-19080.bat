@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="LAPTOP-CNOT3LCH" (taskkill /f /pid 18412)
if /i "%LOCALHOST%"=="LAPTOP-CNOT3LCH" (taskkill /f /pid 19080)

del /F cleanup-ansys-LAPTOP-CNOT3LCH-19080.bat
