#! /bin/bash -eu

echo "[INFO] test"

if [ "$CONF_BASE64" != "" ]; then
  echo $CONF_BASE64 | base64 -d > /app/.conf/rclone.conf
  chmod +x /app/.config/rclone.conf
  echo "[INFO] Rclone config file decoded!"
fi

echo "[INFO] Starting Rclone"
rclone rcd --rc-web-gui \
  --rc-web-gui-no-open-browser \
  --rc-addr 0.0.0.0:$PORT \
  --rc-user $USERNAME \
  --rc-pass $PASSWORD 
echo "[INFO] Rclone started!"
