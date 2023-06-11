$dir = Read-Host "Enter directory name: "
$type = "Enter file type: "

# Generate table with path and file type specified by user

$table = Get-ChildItem -Path $dir* -Filter *$type | Select-Object Name, Directory | Format-Table -AutoSize *

Write-Host $table