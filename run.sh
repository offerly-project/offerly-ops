CMD=$1
USERNAME=$2
PASSWORD=$3
export DB_URL="mongodb://$USERNAME:$PASSWORD@offerly-db:27017/offerly"
export DATA_DIR='/offerly-data'
export UPLOADS_DIR='/offerly-uploads'
export COUNTRIES='["Saudi Arabia"]'
export CATEGORIES='["Shopping","Travel","Restaurants & Cafes","Entertainment","Car Services","Health & Wellness","Others","Groceries"]'
export LANGUAGES='["ar","en"]'
export NODE_ENV=production
sh ./pull.sh
if [ $CMD = "start" ]; then
    docker compose up --build -d
elif [ $CMD = "stop" ]; then
    docker compose down
fi