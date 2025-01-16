nvidia-smi | grep -P '\|.*\|\s+\K[0-9]+%' | grep -oE '[0-9\.]+' | paste -sd ' ' | awk '{print "{\"usage\":" $8 ", \"temp\":" $2 ", \"used_vram\":" $6 ", \"total_vram\":" $7 "}"}'
