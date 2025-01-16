watch -n 1 "sensors 2>/dev/null | grep 'Package id 0' | awk '{print \$4}'"
