@ECHO OFF
for /f "tokens=*" %%a in ('C:\Windows\System32\WindowsPowerShell\v1.0\powershell get-date -format "{yyyy-MM-dd}"') do set Today=%%a
devcon disable "@USB\VID_1235&PID_800A\5&6B4DCFF&0&3" >> %Today%.log
devcon enable "@USB\VID_1235&PID_800A\5&6B4DCFF&0&3" >> %Today%.log