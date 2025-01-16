free -h --giga | grep 'Mem' | grep -oE '[0-9\.]+' | paste -sd ' ' | awk '{print "{\"used\":" $2 ", \"total\":" $1 "}"}'
