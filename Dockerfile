from docker-0.unsee.tech/vaultwarden/server

run mkdir -p --mode=0755 /usr/share/keyrings
run curl -fsSL https://pkg.cloudflare.com/cloudflare-main.gpg | tee /usr/share/keyrings/cloudflare-main.gpg >/dev/null
run echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/cloudflared any main' | tee /etc/apt/sources.list.d/cloudflared.list
run apt-get update
run apt-get install cloudflared python3 -y
run pip3 install webdavclient3 requests
run apt-get install -y wget curl

copy start2.sh /start2.sh
run chmod +x /start2.sh

copy sync_data.sh /sync_data.sh
run chmod +x /sync_data.sh

cmd /start2.sh