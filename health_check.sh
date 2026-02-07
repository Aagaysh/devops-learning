echo "Disk Usage:"
df -h | head -5

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Running Services:"
systemctl --type=service --state=running | head -10

