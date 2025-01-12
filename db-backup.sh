backup_date=$(date '+%Y-%m-%d_%H-%M-%S')
backup_name="$backup_date.backup"
backup_path="./backups/db"

docker exec offerly-db-c mongodump --uri="$MONGO_OFFERLY_URI" --out "/data/db/backup/$backup_name"


if [ $? -eq 0 ]; then
  echo "Offerly DB Backup - $backup_name - Completed"
else
  echo "Offerly DB Backup - $backup_name - Failed"
  exit 1 
fi


docker cp "offerly-db-c:/data/db/backup/$backup_name/" "$backup_path"


if [ $? -eq 0 ]; then
  echo "Backup $backup_name copied to host successfully."
else
  echo "Error copying backup $backup_name to host."
  exit 1 
fi