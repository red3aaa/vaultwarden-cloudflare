cloudflared service install ${cloudflare_token}

./sync_data.sh &
if [ "$DOWNLOAD_BACKUP" = "true" ]; then
	sleep 15
fi

/start.sh 
