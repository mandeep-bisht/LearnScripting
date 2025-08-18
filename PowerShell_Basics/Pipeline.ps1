# List processes sorted by CPU usage
Get-Process | Sort-Object CPU -Descending
# Show only name and CPU usage of processes
Get-Process | Select-Object Name, CPU
