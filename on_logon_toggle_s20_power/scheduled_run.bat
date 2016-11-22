@ECHO OFF
SET ScriptRoot=%~dp0
for /f "tokens=*" %%a in ('C:\Windows\System32\WindowsPowerShell\v1.0\powershell get-date -format "{yyyy-MM-dd}"') do set Today=%%a
SET LogName=toggle_s20_power_%Today%.log

cd /d %ScriptRoot%
C:\Windows\System32\WindowsPowerShell\v1.0\powershell -NoProfile -ExecutionPolicy Bypass -Command "./run.ps1 1 -verbose >> %LogName% 2>&1"
