#!/usr/bin/env node
const { spawn } = require("child_process");

spawn("ls", ["-hAl", "."], { stdio: "inherit" });
