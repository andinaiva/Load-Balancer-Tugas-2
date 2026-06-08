Write-Host ""
Write-Host "====================================="
Write-Host "UJI LOAD BALANCER : LEAST CONNECTION"
Write-Host "====================================="

for ($i=1; $i -le 10; $i++) {

    $hasil = Invoke-RestMethod "http://localhost/?delay=3000"

    Write-Host ""
    Write-Host "Request ke-$i"

    Write-Host "Algorithm    : Least Connection"
    Write-Host "Layer        : Layer 7"
    Write-Host "Backend      : $($hasil.server_id)"
    Write-Host "Server Name  : $($hasil.server_name)"
    Write-Host "Status       : $($hasil.status)"
}