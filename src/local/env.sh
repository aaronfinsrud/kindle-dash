export TIMEZONE="America/New_York"

# cron expression: when to wake and refresh
# every 30 min, all day, every day
export REFRESH_SCHEDULE="0,30 * * * *"

# burst window: while the current time is inside this cron window the device
# stays awake (no suspend) and refreshes every BURST_INTERVAL seconds.
# 8:00-8:30 Mon-Fri, every 30s
export BURST_SCHEDULE="0-30 8 * * MON-FRI"
export BURST_INTERVAL=30

# every Nth refresh is a full flashing refresh, to clear ghosting
export FULL_DISPLAY_REFRESH_RATE=6

# if the next wakeup is further out than this many seconds,
# show sleeping.png instead of the dashboard
export SLEEP_SCREEN_INTERVAL=3600

# something on your LAN that always answers ping (usually the router)
export WIFI_TEST_IP=192.168.1.1

export LOW_BATTERY_REPORTING=true
export LOW_BATTERY_THRESHOLD_PERCENT=10