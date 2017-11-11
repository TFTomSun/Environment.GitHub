param([String]$scriptFileName) #Must be the first statement in your script

$url = 'https://raw.githubusercontent.com/TFTomSun/Environment.GitHub/master/AppVeyor/' + $scriptFileName;
$Script = Invoke-WebRequest $url;
$ScriptBlock = [Scriptblock]::Create($Script.Content)
Invoke-Command -ScriptBlock $ScriptBlock -ArgumentList ($args + @('someargument'))
