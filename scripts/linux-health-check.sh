#!/bin/bash
# Linux Health Check Script
# Author: Eyal Leserowitz

echo "=== System Health Check ==="

echo ""
echo "[System Info]"
uname -a

echo ""
echo "[Disk Space]"
df -h

echo ""
echo "[Memory]"
free -h

echo ""
echo "[Network Check]"
ping -c 2 8.8.8.8

echo ""
echo "=== Health Check Complete ==="
