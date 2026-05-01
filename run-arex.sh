#!/bin/bash
termux-wake-lock
pkill -9 python
pkill -9 cloudflared
python -m http.server 8080 & 
sleep 2
cloudflared tunnel --url http://127.0.0.1:8080
0

