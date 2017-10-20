#required AudioDeviceCmdlets.dll from https://www.automatedops.com/projects/windowsaudiodevice-powershell-cmdlet/
#Link: https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet/blob/master/AudioDeviceCmdlets.zip
#Get-AudioDeviceList to get the name
param($device)
Write-Host $device;
$IndexForScarlet = 1;
$IndexForHDMI = 0;

if($device -eq 0){
    Set-DefaultAudioDevice $IndexForScarlet;
}
elseif($device -eq 1){
	Set-DefaultAudioDevice $IndexForHDMI;
	
}
	