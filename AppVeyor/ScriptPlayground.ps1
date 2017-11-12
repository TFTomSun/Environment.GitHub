
function RunLocalScript
{
 Param(
 [parameter(Mandatory=$true)][String]$scriptFilePath,
 [parameter(ValueFromRemainingArguments=$true)][String[]]$arguments
    )

# Invoke the script
Invoke-Expression "$scriptFilePath $arguments"
}

function RunWebScript
{
 Param(
 [parameter(Mandatory=$true)][String]$scriptFileName,
 [parameter(ValueFromRemainingArguments=$true)][String[]]$arguments
    )

$url = 'https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/' + $scriptFileName;
$scriptFilePath = [io.path]::combine($($env:TEMP), $scriptFileName)
# Download the script
Invoke-WebRequest -Uri $url -OutFile $scriptFilePath
# Invoke the script
Invoke-Expression "$scriptFilePath $arguments"
}

Push-Location $MyInvocation.MyCommand.Path
[Environment]::CurrentDirectory = $PWD


RunLocalScript ".\GetReferencingPackages.ps1" "Newtonsoft.Json"

##  Your Script Code ...
#Pop-Location
#[Environment]::CurrentDirectory = $PWD
