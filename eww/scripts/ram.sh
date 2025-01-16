watch -n 1 "
index=0
free -h --giga | grep 'Mem' | awk '{print \$3; print \$2}' | while IFS= read -r line; do
    case \$index in
    0) echo \"used_mem\" \"\$line\" ;;
    1) echo \"total_mem\" \"\$line\" ;;
    esac
    index=\$((index + 1))
done
"
