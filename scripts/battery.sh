percentage=$(cat /sys/class/power_supply/BAT0/capacity)
time=$(upower -e | head -n 1 | xargs upower -i | grep time | awk '{print $4 substr($5,1,1)}')
echo "{\"percentage\": $percentage, \"time\": \"$time\"}"