Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
$toolDir = (Get-Location).Path
$exeName = "wifi.exe"
$exePath = Join-Path -Path $toolDir -ChildPath $exeName
if (-Not (Test-Path $exePath)) {
    Write-Host "Error: $exeName not found in $toolDir" -ForegroundColor Red
    exit 1
}
$envName = "Path"
$currentPath = [Environment]::GetEnvironmentVariable($envName, "Machine")
if ($currentPath -notlike "*$toolDir*") {
    Write-Host "Adding to system PATH..." -ForegroundColor Red
    [Environment]::SetEnvironmentVariable($envName, "$currentPath;$toolDir", "Machine")
    $env:Path = [Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [Environment]::GetEnvironmentVariable("Path", "User")
}
$batchContent = @"
@echo off
"$exePath" %*
"@
$batchPath = Join-Path -Path $toolDir -ChildPath "wifi.bat"
$batchContent | Out-File -FilePath $batchPath -Encoding ASCII
$launcherContent = @"
@echo off
start "" "$exePath" %*
"@
$launcherPath = Join-Path -Path $env:SystemRoot -ChildPath "System32\wifi.cmd"
$launcherContent | Out-File -FilePath $launcherPath -Encoding ASCII
Write-Host "[-] Installation completed" -ForegroundColor Green
Write-Host "[-] You can now run (wifi) from any command prompt" -ForegroundColor Green
Write-Host "[-] Thank you for using a program by pl7x3cut0r" -ForegroundColor Green