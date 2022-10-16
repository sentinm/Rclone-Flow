<p align=center><img src="https://img.shields.io/badge/!-Inactively%20Maintained-red"></p>
<p align=center><img src="https://user-images.githubusercontent.com/79321771/195789948-1525abaa-8247-40e0-9807-dd20f458bf0f.png"></p>
<b>Simple docker based workflow to run a rclone server on heroku any vps (only which supports docker). Also this is running rclone web gui as a user interface, so it's very easy to use this</b>

- watch this video on how to setup rclone web gui on AWS - <a href="https://youtu.be/GYLscUPs2Sw">Click here</a>
- watch this video on how to setup this workflow - <a href="">will be soon</a>
- default password and username is ``` admin ```

# Configuration
- `CONF_BASE64` - Your pre-configured ***rclone.conf*** encoded by base64. You can use any tool (ex: https://da.gd/base64)
- `USERNAME` - Any self specified username.
- `PASSWORD` - Any self specified password.

# Deployment
- Generate your rclone.conf file locally from this <a href="http://www.youtube.com/watch?v=n8qghZC1Kuc">video.</a> (if you have a rclone.conf file skip this step)

- Just click the specific deploy button, continue the process as given.

<p align=center><a href="https://render.com/deploy?repo=https://github.com/sentinm/Rclone-Flow"><img src="https://render.com/images/deploy-to-render-button.svg" width="200"></a></p>
<p align=center><a href="https://heroku.com/deploy?template=https://github.com/sentinm/Rclone-Flow/"><img src="https://www.herokucdn.com/deploy/button.svg" width="200"></a></p>
<p align=center><a href="https://railway.app/new/template/lmBc3q"><img src="https://railway.app/button.svg" width="200"></a></p>

# Notes
- Your ***rclone.conf*** file is a must and there is no way to generate new configs for some oath systems like google drive from web gui. ***(<a href="https://github.com/rclone/rclone-webui-react/issues/43">issue on github of web-gui</a>)***
- After they fixed it I just need to register ```53682``` port on heroku and it will be solved! 
<br>
<p align=center><a href="https://www.reddit.com/u/poppitxd/"><img src="https://telegra.ph/file/c4d5c54694f322ff91079.png" width="140"></a></p>
