@echo off
cd /d D:\projects\kita\ebd-app

:: Проверяем, занят ли порт 3000
netstat -ano | find "LISTENING" | find ":3000" > nul

    set PORT=5000

start cmd /k "set PORT=%PORT% && npm start -- --host 192.168.178.177"