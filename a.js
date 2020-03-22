#!/usr/bin/env node
const { spawn } = require("child_process");

spawn("echo", ["-n", "hello, world"], { stdio: "inherit" });
