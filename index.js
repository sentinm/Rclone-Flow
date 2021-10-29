const { exec } = require("child_process");
const PORT = process.env.PORT || 6745;

exec("curl https://rclone.org/install.sh | sudo bash", (error, stdout, stderr) => {
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

exec(`rclone rcd --rc-web-gui --rc-addr=localhost:${PORT} --rc-user=sudo --rc-pass=sudo`, (error, stdout, stderr) => {
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
