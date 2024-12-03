#! /home/shaw/.config/nvm/versions/node/v20.11.1/bin/node

const fs = require('fs')

let filePath = '/home/shaw/.config/awesome/themes/default/theme.lua'

const { exec } = require("child_process");

let config_file = fs.readFileSync(filePath, { encoding: 'utf8' })


let splits = config_file.split("\n")

let toggle = false

const appendComent = "-- toggle_by_script "

let finalArr = []

for (let str of splits) {
    if (str.startsWith("theme.wallpaper")) {
        // str = appendComent + str
        finalArr.push(appendComent + str)
        toggle = true;
    }
    else{
        finalArr.push(str)
    }
}


if (!toggle) {
    finalArr = []
    for (let str of splits) {
        if (str.startsWith(appendComent)) {
            let finalstr = str.replace(appendComent, "")
            finalArr.push(finalstr)
        }
        else{
            finalArr.push(str)
        }
    }
}

fs.writeFileSync(filePath, finalArr.join("\n"));
exec("echo 'awesome.restart()' | awesome-client")

