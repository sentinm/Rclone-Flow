FROM rclone/rclone:latest

CMD gunicorn --bind 0.0.0.0:$PORT wsgi

CMD ["rcd","--rc-web-gui","--rc-user=admin","--rc-pass=sudo"]
