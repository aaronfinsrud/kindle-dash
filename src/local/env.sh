export TIMEZONE="America/New_York"

# --- normal mode: twice a day ---------------------------------------------
export DASHBOARD_URL="https://e-ink-tracker.vercel.app/api/snapshot.png"
# cron expression: when to wake and refresh (7:00 and 19:00 every day)
export REFRESH_SCHEDULE="0 7,19 * * *"

# --- burst mode: commute window --------------------------------------------
# while the current time is inside this cron window the device stays awake
# (no suspend) and fetches BURST_URL every BURST_INTERVAL seconds.
# 8:00-8:37 Mon-Fri, every 60s
export BURST_URL="https://e-ink-tracker.vercel.app/daily-dashboard/api/snapshot.png"
export BURST_SCHEDULE="0-37 8 * * MON-FRI"
export BURST_INTERVAL=60

# every Nth refresh is a full flashing refresh, to clear ghosting
export FULL_DISPLAY_REFRESH_RATE=6

# if the next wakeup is further out than this many seconds, show sleeping.png
# instead of the dashboard. Set larger than any gap (12h = 43200) so the last
# dashboard image stays on screen and sleeping.png is never shown.
export SLEEP_SCREEN_INTERVAL=99999999

# something on your LAN that always answers ping (usually the router)
export WIFI_TEST_IP=192.168.1.1

export LOW_BATTERY_REPORTING=true
export LOW_BATTERY_THRESHOLD_PERCENT=10
