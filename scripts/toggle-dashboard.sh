current=$(eww state | grep 'is_dashboard_active' | awk '{print $2}')
if [ "$current" = "true" ]; then
    eww update is_dashboard_active="false"
    sleep 0.5s
    eww close overlay
else
    eww open overlay
    sleep 0.05s
    eww update is_dashboard_active="true"
fi
