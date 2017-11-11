param([String]$scriptFileName, [String]$arguments) #Must be the first statement in your script

$url = 'https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/' + $scriptFileName;
$scriptFilePath = [io.path]::combine($($env:TEMP), $scriptFileName)
# Download the script

Invoke-WebRequest -Uri $url -OutFile $scriptFilePath
# Invoke the script
Invoke-Expression "$scriptFilePath $arguments"

#$Script = Invoke-WebRequest $url;
#$ScriptBlock = [Scriptblock]::Create($Script.Content)
#Invoke-Command -ScriptBlock $ScriptBlock -ArgumentList ($args + @('someargument'))
