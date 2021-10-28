FROM rclone/rclone:latest

CMD ["rcd","--rc-web-gui","--rc-addr=0.0.0.0:80","--rc-user=admin","--rc-pass=sudo"]
