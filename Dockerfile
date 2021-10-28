FROM rclone/rclone:latest

# Install python and pip
RUN apk add --no-cache --update python3 py3-pip bash
ADD ./requirements.txt /tmp/requirements.txt

# Install dependencies
RUN pip3 install --no-cache-dir -q -r /tmp/requirements.txt

CMD gunicorn --bind 0.0.0.0:5572 wsgi

CMD ["rcd","--rc-web-gui","--rc-user=admin","--rc-pass=sudo"]
