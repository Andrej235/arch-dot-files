#!/bin/bash
cd -P -- "$(dirname -- "$0")"

if [[ $# -lt 1 ]]; then
    echo "Use $0 {function_name}"
    exit 1
fi

case $1 in
'play-pause')
    playerctl play-pause
    eww update song="$($PWD/get-song-data.sh)"
    ;;
*)
    echo "Error: Command '$1' not found."
    exit 1
    ;;
esac
