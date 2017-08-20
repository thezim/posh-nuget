function Add-TypeFromNuget {
    [CmdletBinding()]
    param(
        $Uri="https://www.nuget.org/api/v2/package",
        [ValidateNotNullOrEmpty()]
        [string]$Package,
        [ValidateNotNullOrEmpty()]
        [string[]]$Library
    )
    [System.Reflection.Assembly]::LoadWithPartialName("System.IO.Compression") | Out-Null
    $response = Invoke-WebRequest -Uri "$Uri/$Package"
    $zip = New-Object System.IO.Compression.ZipArchive($response.RawContentStream)
    foreach($lib in $Library){
        $entry = $zip.GetEntry($lib)
        $entryreader = New-Object System.IO.StreamReader($entry.Open())
        $ms = New-Object System.IO.MemoryStream
        $entryreader.BaseStream.CopyTo($ms, $entry.Length)
        $entryreader.Close()
        [Reflection.Assembly]::Load($ms.ToArray()) | Out-Null
        $ms.Close()
    }
}

function Get-NugetPackage {
    [CmdletBinding()]
    param(
        $Uri="https://www.nuget.org/api/v2/package",
        [ValidateNotNullOrEmpty()]
        [string]$Package
    )
    [System.Reflection.Assembly]::LoadWithPartialName("System.IO.Compression") | Out-Null
    $response = Invoke-WebRequest -Uri "$Uri/$Package"
    $zip = New-Object System.IO.Compression.ZipArchive($response.RawContentStream)
    $zip.Entries
}