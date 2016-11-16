function ToggleS20Power(){
	ToggleSpeakers
	ToggleLights
}

function ToggleSpeakers(){
    #Speakers
	$postParams = @{toMainPage = 'switchACCF2399591C'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

function ToggleLights(){
	#Lights
    $postParams = @{toMainPage = 'switchACCF2399582A'}
    Invoke-WebRequest -Uri http://192.168.0.15:8000/ -Method POST -Body $postParams
}

ToggleS20Power