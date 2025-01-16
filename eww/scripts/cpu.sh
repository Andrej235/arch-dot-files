regex='^[0-9]+([.][0-9]+)?$'

mpstat 1 | while read line; do
    cpu_usage=$(echo $line | awk '{printf $4}' 2>/dev/null)
    if [[ $cpu_usage =~ $regex ]]; then
        echo $cpu_usage
    fi
done
