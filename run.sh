USERNAME=$1
PASSWORD=$2
export DB_URL="mongodb://$USERNAME:$PASSWORD@offerly-db:27017/offerly"
export DATA_DIR='/offerly-data'
export UPLOADS_DIR='/offerly-uploads'
export COUNTRIES='["Saudi Arabia"]'
export CATEGORIES='["Shopping","Travel","Restaurants & Cafes","Entertainment","Car Services","Health & Wellness","Others","Groceries"]'
export LANGUAGES='["ar","en"]'
export NODE_ENV=production
sh ./pull.sh
docker compose up --build -d
sh ./cert.sh