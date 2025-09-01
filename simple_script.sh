echo "Hi! Jenkins Build is Triggered"
echo "================================"
echo "Todays's Date : $(date)"
echo "Hostname      : $(hostname)"
echo "Uername       : $(whoami)"
echo "IP Address    : $(hostname -I | awk '{print $1}')"

echo "===== CPU Usage ====="
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Load: " $2 + $4 "%"}'

echo "===== Memory Usage ====="
free -h | awk '/Mem:/ {print "Used: "$3" / Total: "$2" | Free: "$4}'

echo "===== Thank you! ====="
