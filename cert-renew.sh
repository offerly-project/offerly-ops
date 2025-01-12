logfile="./logs/cert-renew.log"
current_date=$(date '+%Y-%m-%d %H:%M:%S')
docker_command_output=$(docker compose -f /root/offerly-ops/docker-compose.yaml run --rm certbot renew 2>&1)
echo "$current_date" >> "$logfile"
echo "$docker_command_output" >> "$logfile"