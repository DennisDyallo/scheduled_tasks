#toggle s20 power
$taskName = Split-Path $PSScriptRoot -Leaf
$taskRun = "$PSScriptRoot\scheduled_run.bat"
$taskSchedule = "ONLOGON"

"Setting up task: $taskName with $taskRun at schedule: $taskSchedule"

& schtasks /create /tn $taskName /tr $taskRun /sc $taskSchedule /ru "System" /delay 0001:00 /F