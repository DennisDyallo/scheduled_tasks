#required AudioDeviceCmdlets.dll from https://www.automatedops.com/projects/windowsaudiodevice-powershell-cmdlet/
#Link: https://github.com/cdhunt/WindowsAudioDevice-Powershell-Cmdlet/blob/master/AudioDeviceCmdlets.zip
#Get-AudioDeviceList to get the name
param($device)
Write-Host $device;
if($device -eq 0){
    Set-DefaultAudioDevice "Line Out (2- Scarlett 2i4 USB)";
}
elseif($device -eq 1){
	Set-DefaultAudioDevice "SAMSUNG-4 (NVIDIA High Definition Audio)";
	
}
	