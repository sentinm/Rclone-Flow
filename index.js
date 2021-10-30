const { exec } = require("child_process")
const PORT = process.env.PORT || 5000
const HOST = process.env.HOST || 0.0.0.0

exec(`rclone rcd --rc-web-gui --rc-addr=${ HOST }:${ PORT } --rc-user=sudo --rc-pass=sudo`, (error, stdout, stderr) => {
    if (error) {
        console.log(`[Error] ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`[Std Error] ${stderr}`);
        return;
    }
    console.log(`${stdout}`);
}).listen(process.env.PORT || 5000)
