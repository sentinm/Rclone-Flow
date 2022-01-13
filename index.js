const { exec } = require("child_process");
const PORT = process.env.PORT || 5000;
const USERNAME = process.env.USERNAME || sudo;
const PASSWORD = process.env.PASSWORD || sudo;

exec(`rclone rcd --rc-web-gui --rc-addr=0.0.0.0:${ PORT } --rc-user=${ USERNAME } --rc-pass=${ PASSWORD }`, (error, stdout, stderr) => {
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
