watch -n 2 "eww update cpu_temp=\$(sensors 2>/dev/null | grep 'Package id 0' | awk '{print \$4}' | grep -oE '[0-9\.]+')"
