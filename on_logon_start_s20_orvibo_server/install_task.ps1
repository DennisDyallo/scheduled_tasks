#start s20 server
$taskName = Split-Path $PSScriptRoot -Leaf
$executablePath =  & C:\Windows\System32\where.exe php
$taskRun = "$executablePath -S localhost:8000 -t $PSScriptRoot"
$taskSchedule = "ONLOGON"

"Setting up task: $taskName with $taskRun at schedule: $taskSchedule"

& schtasks /create /tn $taskName /tr $taskRun /sc $taskSchedule /ru "System" /F