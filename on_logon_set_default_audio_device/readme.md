Basic command-line audio device control from Powershell including Nuget Package Manager Console.

Features: Set Volume and toggle Mute on the Default Playback Device. Get a list of devices and set the Default Audio Device.

Install.

From WMF5+

Install-Module -Name AudioDeviceCmdlets
Manual Install

Download https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet/blob/master/AudioDeviceCmdlets.zip
New-Item "$($profile | split-path)\Modules\AudioDeviceCmdlets" -Type directory -Force
Copy CoreAudioApi.dll, AudioDeviceCmdlets.dll and AudioDeviceCmdlets.dll-Help.xml to the above location.
Open a PowerShell console As Administrator.
Set-Location "$($profile | Split-Path)\Modules\AudioDeviceCmdlets"
Get-ChildItem | Unblock-File
Import the binary module. This can go into your profile.
Import-Module AudioDeviceCmdlets
You may need to set the execution policy.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
Suggested Aliases. I may set these in the module in the future.

New-Alias -Name Mute -Value Set-DefaultAudioDeviceMute
New-Alias -Name Vol -Value set-DefaultAudioDeviceVolume
Exposed Cmdlets

Get-DefaultAudioDevice
Get-AudioDeviceList
Set-DefaultAudioDevice [-Index] <Int>
Set-DefaultAudioDevice [-Name] <String>
Set-DefaultAudioDevice [-InputObject] <AudioDevice>
Set-DefaultAudioDeviceVolume -Volume <float>
Get-DefaultAudioDeviceVolume
Set-DefaultAudioDeviceMute <Bool>
Set-DefaultAudioDeviceMute #Toggle
Get-DefaultAudioDeviceMute
Write-DefaultAudioDeviceValue [-StreamValue]
Attribution

Based on work done by Ray M. hosted on The Code Project