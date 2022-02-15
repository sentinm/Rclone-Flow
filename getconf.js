const { exec } = require("child_process");
const CONFIG_FILE_URL = process.env.CONFIG_FILE_URL;

exec(`wget "${ CONFIG_FILE_URL }"`, (error, stdout, stderr) => {
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
