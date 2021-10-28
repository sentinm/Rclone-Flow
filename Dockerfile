RUN curl https://rclone.org/install.sh | sudo bash

CMD gunicorn --bind 0.0.0.0:5572 wsgi

CMD ["rcd","--rc-web-gui","--rc-user=admin","--rs-pass=sudo"]
