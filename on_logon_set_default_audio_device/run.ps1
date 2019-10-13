#required AudioDeviceCmdlets.dll from https://www.automatedops.com/projects/windowsaudiodevice-powershell-cmdlet/
#Link: https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet/blob/master/AudioDeviceCmdlets.zip
#Get-AudioDeviceList to get the name
param($device)


function SetAudioDevice([string] $Device) {
	Get-AudioDevice -List | ForEach-Object -Process { if ($_.Name -Match $Device){Set-AudioDevice $_.Index}}
}

SetAudioDevice $device