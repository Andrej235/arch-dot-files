usage="$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')"
temp="$(sensors 2>/dev/null | grep 'Package id 0' | awk '{print $4}' | grep -oE '[0-9\.]+')"
echo "{\"usage\": $usage, \"temp\": $temp}"
