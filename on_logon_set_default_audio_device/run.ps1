param($device)
Write-Host $device;
if($device -eq 0){
    Set-DefaultAudioDevice "Line Out (Scarlett 2i4 USB)";
}
elseif($device -eq 1){
	Set-DefaultAudioDevice "SAMSUNG-4 (NVIDIA High Definition Audio)";
	
}
	