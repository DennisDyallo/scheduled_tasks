#install all tasks
$installedScriptsCounterSuccess = 0
$installedScriptsCounterFailed = 0
Get-ChildItem -Directory $PSScriptRoot | ForEach-Object {
    $directory = $_.FullName;
    $installScriptPath = "$directory\install_task.ps1"

    
    if(Test-Path $installScriptPath -PathType Leaf){
        & $installScriptPath -ErrorVariable InstallError
        "Error: $InstallError.Count"
        ++$installedScriptsCounterSuccess
        #++$installedScriptsCounterFailed
        
    }
}

if($installedScriptsCounterSuccess -gt 0 -and $installedScriptsCounterFailed -eq 0){
    "Finished installing $installedScriptsCounterSuccess scripts."
}
elseif($installedScriptsCounterSuccess -gt 0 -and $installedScriptsCounterFailed -gt 0){
    "Finished installing $installedScriptsCounterSuccess scripts but with $installedScriptsCounterFailed failures."
}
elseif($installedScriptsCounterSuccess -eq 0 -and $installedScriptsCounterFailed -eq 0){
    "Found no scripts to install."
}
else{
    "Failed installing $installedScriptsCounterFailed scripts."
}

"Also, $InstallError.Count"
