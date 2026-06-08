Write-Host ""
Write-Host "====================================="
Write-Host "UJI LOAD BALANCER : ROUND ROBIN"
Write-Host "====================================="

for ($i=1; $i -le 10; $i++) {

    $hasil = Invoke-RestMethod http://localhost

    Write-Host ""
    Write-Host "Request ke-$i"

    Write-Host "Algorithm    : Round Robin"
    Write-Host "Layer        : Layer 7"
    Write-Host "Backend      : $($hasil.server_id)"
    Write-Host "Server Name  : $($hasil.server_name)"
    Write-Host "Status       : $($hasil.status)"
}