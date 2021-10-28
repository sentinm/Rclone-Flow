FROM rclone/rclone:latest

CMD ["rcd","--rc-web-gui","--rc-user=admin","--rc-pass=sudo"]
