regex='^[0-9]+([.][0-9]+)?$'

mpstat 2 | while read line; do
    cpu_usage=$(echo $line | awk '{printf $4}' 2>/dev/null)
    if [[ $cpu_usage =~ $regex ]]; then
        eww update cpu_usage=$cpu_usage
    fi
done
