const { exec } = require("child_process");
const PORT = process.env.PORT || 5000;

exec(`rclone rcd --rc-web-gui --rc-addr=0.0.0.0:${ PORT } --rc-user=sudo --rc-pass=sudo`, (error, stdout, stderr) => {
    if (error) {
        console.log(`[Error] ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`[Std Error] ${stderr}`);
        return;
    }
    console.log(`${stdout}`);
});
