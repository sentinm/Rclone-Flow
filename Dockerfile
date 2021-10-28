FROM rclone/rclone:latest

CMD ["rcd","--rc-web-gui","--rc-addr=localhost:5000","--rc-allow-origin="https://heroku-rclone.herokuapp.com","--rc-user=admin","--rc-pass=sudo"]
