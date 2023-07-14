write-host "input data:"
$data = read-host 

$data = $data.split(" ")

Write-Host ""
Write-Host "answer:"
[int]$data[0] + [int]$data[1]
