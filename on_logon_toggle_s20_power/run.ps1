param($state)

#setOnACCF2399591C
#setOnACCF2399582A
#setOffACCF2399591C
#setOffACCF2399582A

function SetDeviceState([string] $Device, [string] $State){
	if($Device -eq "lights"){
		$deviceId = "ACCF2399582A"
	}
	elseif ($Device -eq "speakers"){
		$deviceId = "ACCF2399591C"
	}
	else{
		throw "Invalid device"
	}
	
	$postParams = @{toMainPage = "set$State$deviceId"}
	Invoke-WebRequest -Uri http://localhost:8000/ -Method POST -Body $postParams
}

if($state -eq 1){

	if ((Get-Date).Hour -gt 23){
		Write-Host "Sorry, it's to late."
	}
	else{
		SetDeviceState "speakers" "On"
		SetDeviceState "lights" "On"
	}
}
else{
	SetDeviceState "speakers" "Off"
	SetDeviceState "lights" "Off"
}