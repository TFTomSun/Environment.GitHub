param([String]$nugetPackageName) #Must be the first statement in your script

$PackageId = $nugetPackageName

$wr = Invoke-WebRequest "http://packages.nuget.org/v1/FeedService.svc/Packages?`$filter=substringof(%27$PackageId%27,%20Dependencies)%20eq%20true&`$select=Id,Version,Dependencies"
if ($wr.StatusCode -ne 200) {
    Write-Error $wr.StatusDescription
    return
}

$xml = [xml]$wr.content
$xml.feed.entry.properties

