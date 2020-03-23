const { spawn } = require("child_process");

let data = "";
let proc = spawn("./a.js", [], { cwd: process.env.PWD });
proc.stdout.on("data", chunk => data += chunk);
proc.on("error", console.log);
proc.on("close", code => console.log(`Code: ${code}\nData: ${data}`));
