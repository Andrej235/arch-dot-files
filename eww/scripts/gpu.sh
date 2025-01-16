nvidia-smi -l=1 | while read line; do
    index=0

    echo "$line" | grep -P '\|.*\|\s+\K[0-9]+%' | awk '{print $3; print $9; print $11; print $13}' |
        while IFS= read -r line; do
            case $index in
            0) echo "temp" "$line" ;;
            1) echo "used_mem" "$line" ;;
            2) echo "total_mem" "$line" ;;
            3) echo "usage" "$line" ;;
            esac
            index=$((index + 1))
        done
done
