param([String]$scriptFileName) #Must be the first statement in your script

$Script = Invoke-WebRequest 'https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/' + $scriptName;
$ScriptBlock = [Scriptblock]::Create($Script.Content)
Invoke-Command -ScriptBlock $ScriptBlock -ArgumentList ($args + @('someargument'))
