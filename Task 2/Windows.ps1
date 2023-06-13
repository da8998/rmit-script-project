$dir = Read-Host "Enter directory name: "
$type = Read-Host "Enter file type: "

# Generate table with path and file type specified by user
Get-ChildItem -Path $dir* -Filter *$type | Select-Object Name, Directory | Format-Table -AutoSize *