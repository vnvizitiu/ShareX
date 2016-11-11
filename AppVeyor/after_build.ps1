if ($env:APPVEYOR_PULL_REQUEST_NUMBER -eq $null)
{
    if ($env:CONFIGURATION -eq "Release")
    {
        & "ShareX.Setup\bin\Release\ShareX.Setup.exe" -AppVeyorRelease
    }
    elseif ($env:CONFIGURATION -eq "Steam" -and $env:APPVEYOR_REPO_TAG -eq $true)
    {
        & "ShareX.Setup\bin\Steam\ShareX.Setup.exe" -AppVeyorSteam
    }
}