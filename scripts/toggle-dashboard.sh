current=$(eww state | grep 'is_dashboard_active' | awk '{print $2}')
if [ "$current" = "true" ]; then
    eww update is_dashboard_active="false"
else
    eww update is_dashboard_active="true"
fi
