Get-ChildItem "C:\Windows\System32" -Recurse -ErrorAction SilentlyContinue -Filter *.dll | 
Foreach-Object {
    Get-Location
    $fullPath = $_.FullName
    $fileName = $_.Name
    Write-Output $fullPath
    #Write-Output $fileName

    $arguments = "-exports $($fullPath) /OUT:$($fileName).exports.txt"
    #Write-Output $arguments
    Start-Process -FilePath "dumpbin.exe" -WorkingDirectory "$(Get-Location)"  -ArgumentList $arguments
}