# Windows Health Check Script
# Author: Eyal Leserowitz

Write-Host "=== System Health Check ==="

# System Information
Write-Host "`n[System Info]"
Get-ComputerInfo | Select-Object CsName, WindowsVersion, OsArchitecture | Format-List

# Disk Space
Write-Host "`n[Disk Space]"
Get-PSDrive -PSProvider 'FileSystem' | Select-Object Name, Used, Free

# Memory Usage
Write-Host "`n[Memory]"
Get-CimInstance Win32_OperatingSystem | 
    Select-Object FreePhysicalMemory, TotalVisibleMemorySize

# Running Services (critical ones)
Write-Host "`n[Critical Services]"
Get-Service -Name "wuauserv","bits","lanmanworkstation","Dnscache" | Format-Table

# Network Status
Write-Host "`n[Network Status]"
Test-Connection -Count 2 8.8.8.8 | Select-Object Address, ResponseTime

Write-Host "`n=== Health Check Complete ==="
