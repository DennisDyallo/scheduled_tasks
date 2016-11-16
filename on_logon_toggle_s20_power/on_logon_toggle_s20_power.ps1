param($state)
function TurnOnPower(){
	TurnOnSpeakers
	TurnOnLights
}

function TurnOffPower(){
	TurnOffSpeakers
	TurnOffLights
}

function TurnOnSpeakers(){
    #Speakers
	$postParams = @{toMainPage = 'setOnACCF2399591C'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

function TurnOnLights(){
	#Lights
    $postParams = @{toMainPage = 'setOnACCF2399582A'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

function TurnOffSpeakers(){
    #Speakers
	$postParams = @{toMainPage = 'setOffACCF2399591C'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

function TurnOffLights(){
	#Lights
    $postParams = @{toMainPage = 'setOffACCF2399582A'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

if($state -eq 1){
	TurnOnPower
}
else{
	TurnOffPower
}