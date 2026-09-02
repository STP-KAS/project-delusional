# Copy of C:\Users\Remco\Documents\kaspa\start-local.ps1
$ErrorActionPreference = "Stop"
Get-Process kns,gramlane,kastill -ErrorAction SilentlyContinue | Stop-Process -Force
Start-Sleep -Milliseconds 400
Start-Process -FilePath "C:\Users\Remco\kns\kns.exe" -WorkingDirectory "C:\Users\Remco\kns" -WindowStyle Minimized
Start-Process -FilePath "C:\Users\Remco\Documents\kaspa\superapp\gramlane.exe" -WorkingDirectory "C:\Users\Remco\Documents\kaspa\superapp" -WindowStyle Minimized
Start-Process -FilePath "C:\Users\Remco\Documents\kaspa\superappstablesalternative\kastill.exe" -WorkingDirectory "C:\Users\Remco\Documents\kaspa\superappstablesalternative" -WindowStyle Minimized
Start-Sleep 2
@(
  @{n="KNS"; u="http://localhost:8080/"},
  @{n="Gramlane"; u="http://localhost:8081/"},
  @{n="Kaspa Till"; u="http://localhost:8082/"}
) | ForEach-Object {
  try { Invoke-WebRequest $_.u -UseBasicParsing -TimeoutSec 4 | Out-Null; "OK  $($_.n)  $($_.u)" }
  catch { "DOWN $($_.n)  $($_.u)" }
}
