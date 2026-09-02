# Copy of C:\Users\<user>\Documents\kaspa\start-local.ps1
$ErrorActionPreference = "Stop"
Get-Process kns,gramlane,kastill -ErrorAction SilentlyContinue | Stop-Process -Force
Start-Sleep -Milliseconds 400
Start-Process -FilePath "C:\Users\<user>\kns\kns.exe" -WorkingDirectory "C:\Users\<user>\kns" -WindowStyle Minimized
Start-Process -FilePath "C:\Users\<user>\Documents\kaspa\superapp\gramlane.exe" -WorkingDirectory "C:\Users\<user>\Documents\kaspa\superapp" -WindowStyle Minimized
Start-Process -FilePath "C:\Users\<user>\Documents\kaspa\superappstablesalternative\kastill.exe" -WorkingDirectory "C:\Users\<user>\Documents\kaspa\superappstablesalternative" -WindowStyle Minimized
Start-Sleep 2
@(
  @{n="KNS"; u="http://localhost:8080/"},
  @{n="Gramlane"; u="http://localhost:8081/"},
  @{n="Kaspa Till"; u="http://localhost:8082/"}
) | ForEach-Object {
  try { Invoke-WebRequest $_.u -UseBasicParsing -TimeoutSec 4 | Out-Null; "OK  $($_.n)  $($_.u)" }
  catch { "DOWN $($_.n)  $($_.u)" }
}
