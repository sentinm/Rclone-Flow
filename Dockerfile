FROM rclone/rclone:latest

CMD ["rcd","--rc-web-gui","--rc-addr=localhost:80","--rc-user=admin","--rc-pass=sudo"]
