FROM rclone/rclone:latest

CMD ["rclone","--rcd","--rc-web-gui"]
