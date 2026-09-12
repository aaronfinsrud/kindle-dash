#!/usr/bin/env sh
test_ip=$1

if [ -z "$test_ip" ]; then
  echo "No test ip specified"
  exit 1
fi

# PW3: Wi-Fi can wedge (e.g. after a router reboot); bounce it once
restart_wifi() {
  echo "Bouncing Wi-Fi"
  lipc-set-prop com.lab126.cmd wirelessEnable 0
  sleep 5
  lipc-set-prop com.lab126.cmd wirelessEnable 1
  sleep 10
}

wait_for_wifi() {
  max_retry=30
  bounce_at=15
  counter=0

  ping -c 1 "$test_ip" >/dev/null 2>&1

  # shellcheck disable=SC2181
  while [ $? -ne 0 ]; do
    [ $counter -eq $max_retry ] && echo "Couldn't connect to Wi-Fi" && exit 1
    counter=$((counter + 1))
    [ $counter -eq $bounce_at ] && restart_wifi

    sleep 1
    ping -c 1 "$test_ip" >/dev/null 2>&1
  done
}

wait_for_wifi
echo "Wi-Fi connected"
