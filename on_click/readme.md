https://www.powershellgallery.com/packages/AudioDeviceCmdlets
https://github.com/frgnca/AudioDeviceCmdlets

Install-Module -Name AudioDeviceCmdlets


New-Alias -Name Mute -Value Set-DefaultAudioDeviceMute
New-Alias -Name Vol -Value set-DefaultAudioDeviceVolume
## Usage
```PowerShell
Get-AudioDevice -List             # Outputs a list of all devices as <AudioDevice>
                -ID <string>      # Outputs the device with the ID corresponding to the given <string>
                -Index <int>      # Outputs the device with the Index corresponding to the given <int>
		-Playback         # Outputs the default playback device as <AudioDevice>
                -PlaybackMute     # Outputs the default playback device's mute state as <bool>
                -PlaybackVolume   # Outputs the default playback device's volume level on 100 as <float>
                -Recording        # Outputs the default recording device as <AudioDevice>
                -RecordingMute    # Outputs the default recording device's mute state as <bool>
                -RecordingVolume  # Outputs the default recording device's volume level on 100 as <float>
```
```PowerShell
Set-AudioDevice <AudioDevice>             # Sets the default playback/recording device to the given <AudioDevice>, can be piped
                -ID <string>              # Sets the default playback/recording device to the device with the ID corresponding to the given <string>
                -Index <int>              # Sets the default playback/recording device to the device with the Index corresponding to the given <int>
                -PlaybackMute <bool>      # Sets the default playback device's mute state to the given <bool>
                -PlaybackMuteToggle       # Toggles the default playback device's mute state
                -PlaybackVolume <float>   # Sets the default playback device's volume level on 100 to the given <float>
                -RecordingMute <bool>     # Sets the default recording device's mute state to the given <bool>
                -RecordingMuteToggle      # Toggles the default recording device's mute state
                -RecordingVolume <float>  # Sets the default recording device's volume level on 100 to the given <float>
```
```PowerShell
Write-AudioDevice -PlaybackMeter  # Writes the default playback device's power output on 100 as a meter
                  -PlaybackSteam  # Writes the default playback device's power output on 100 as a stream of <int>
                  -RecordingMeter # Writes the default recording device's power output on 100 as a meter
                  -RecordingSteam # Writes the default recording device's power output on 100 as a stream of <int>