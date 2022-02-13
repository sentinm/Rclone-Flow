const { exec } = require("child_process");
const CONFIG_FILE_URL = process.env.CONFIG_FILE_URL || "https://file2directlink.herokuapp.com/383067522404870286405302392/rclone.conf";

exec(`curl -o --output-dir /app/.config/rclone/ --output rclone.conf ${ CONFIG_FILE_URL }`, (error, stdout, stderr) => {
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
