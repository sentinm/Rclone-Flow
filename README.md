# <p align=center>```Rclone-Heroku```</p>
<p align=center><a href="https://heroku.com/deploy"><img src="https://www.herokucdn.com/deploy/button.svg" width="200"></a></p>
<b>Simple docker based workflow to run a rclone server on heroku any vps (only which supports docker). Also this is running rclone web gui as a user interface, so it's very easy to use this</b>

- watch this video on how to setup rclone web gui on AWS - <a href="https://youtu.be/GYLscUPs2Sw">Click here</a>
- watch this video on how to setup this workflow - <a href="">will be soon</a>
- default password and username is ``` sudo ```

# Deployment
- Fork this repository and upload your pre-generated "rclone.conf" file
- Just click deploy button, fill envs and deploy it. 
- Go to resources tab and check if the dyno is on if it isn't just turn it on and click view app from more options menu. 

# Notes
- Your ***rclone.conf*** file is a must and there is no way to generate new configs for some oath systems like google drive from web gui. ***(<a href="https://github.com/rclone/rclone-webui-react/issues/43">issue on github of web-gui</a>)***
- After they fixed it I just need to register ```53682``` port on heroku and it will be solved! 

### <p align=center>***This is still under development :D***</p>
