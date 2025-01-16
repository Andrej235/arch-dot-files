nvidia-smi -l=2 | while read line; do
    index=0

    echo "$line" | grep -P '\|.*\|\s+\K[0-9]+%' | awk '{print $3; print $9; print $11; print $13}' |
        while IFS= read -r line; do
            case $index in
            0) eww update gpu_temp="$(echo $line | grep -oE '[0-9\.]+')" ;;
            1) eww update gpu_used_vram="$(echo $line | grep -oE '[0-9\.]+')" ;;
            2) eww update gpu_total_vram="$(echo $line | grep -oE '[0-9\.]+')" ;;
            3) eww update gpu_usage="$(echo $line | grep -oE '[0-9\.]+')" ;;
            esac
            index=$((index + 1))
        done
done
