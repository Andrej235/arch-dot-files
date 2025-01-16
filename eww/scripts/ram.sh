watch -n 2 "
index=0
free -h --giga | grep 'Mem' | awk '{print \$3; print \$2}' | while IFS= read -r line; do
    case \$index in
    0) eww update used_ram=\"\$(echo \$line | grep -oE '[0-9\.]+')\" ;;
    1) eww update total_ram=\"\$(echo \$line | grep -oE '[0-9\.]+')\" ;;
    esac
    index=\$((index + 1))
done
"
