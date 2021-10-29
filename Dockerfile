FROM rclone/rclone:latest

CMD ["rcd","--rc-web-gui","--rc-addr=localhost:$PORT","--rc-user=admin","--r-pass=sudo"]
