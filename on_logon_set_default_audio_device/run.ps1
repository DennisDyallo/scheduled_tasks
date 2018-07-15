#required AudioDeviceCmdlets.dll from https://www.automatedops.com/projects/windowsaudiodevice-powershell-cmdlet/
#Link: https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet/blob/master/AudioDeviceCmdlets.zip
#Get-AudioDeviceList to get the name
param($device)


function SetAudioDevice([string] $Device) {
	Get-AudioDeviceList | ForEach-Object -Process {if ($_.DeviceFriendlyName -Match $Device){Set-DefaultAudioDevice $_.Index}}
}

SetAudioDevice $device