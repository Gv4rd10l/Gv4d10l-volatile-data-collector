#!/bin/bash

OUTPUT_DIR="/media/usb/volatile_data"

mkdir -p $OUTPUT_DIR

echo "[*] Collecting volatile data..."

ps aux > $OUTPUT_DIR/active_processes.txt
netstat -antup > $OUTPUT_DIR/network_connections.txt
who > $OUTPUT_DIR/active_users.txt
last > $OUTPUT_DIR/user_logins.txt
free -h > $OUTPUT_DIR/memory_usage.txt
lsof > $OUTPUT_DIR/open_sockets.txt
ifconfig > $OUTPUT_DIR/network_config.txt
uptime > $OUTPUT_DIR/system_uptime.txt
dmesg > $OUTPUT_DIR/system_messages.txt
find / -type f -atime -1 > $OUTPUT_DIR/recent_files.txt

echo "[*] Data collected at $OUTPUT_DIR."
