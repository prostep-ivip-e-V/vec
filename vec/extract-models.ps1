$fileToFetch = "models/vec.mdxml"

$destination = "../versions"

Set-Location "./vec.git"

$tags = git tag

foreach($tag in $tags){
    git checkout $tag
    $newFileName = "$((Get-Item $fileToFetch).BaseName)-$tag$((Get-Item $fileToFetch).Extension)"
    Copy-Item $fileToFetch -Destination (Join-Path $destination $newFileName) -Force
}