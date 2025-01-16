usage="$(mpstat | grep 'all' | awk '{print 100 - $13}')"
temp="$(sensors 2>/dev/null | grep 'Package id 0' | awk '{print $4}' | grep -oE '[0-9\.]+')"
echo "{\"usage\": $usage, \"temp\": $temp}"
