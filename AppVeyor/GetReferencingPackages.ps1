param([String]$nugetPackageName) #Must be the first statement in your script

$PackageId = $nugetPackageName

$url = "http://packages.nuget.org/v1/FeedService.svc/Packages?`$filter=substringof(%27$PackageId%27,%20Dependencies)%20eq%20true&`$select=Id,Version,Dependencies"
echo $url
$wr = Invoke-WebRequest $url

if ($wr.StatusCode -ne 200) {
    Write-Error $wr.StatusDescription
    return
}
echo $wr
$xml = [xml]$wr.content
$xml.feed.entry.properties

