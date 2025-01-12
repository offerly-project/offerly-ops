logfile="./logs/cert-renew.log"
current_date=$(date -u '+%Y-%m-%d %H:%M:%S')
docker_command_output=$(docker compose -f /root/offerly-ops/docker-compose.yaml run --rm certbot renew 2>&1)
echo "$current_date $docker_command_output" >> "$logfile"