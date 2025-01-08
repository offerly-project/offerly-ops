USERNAME=$1
PASSWORD=$2
DB_URL="mongodb://$USERNAME:$PASSWORD@offerly-db:27017/offerly"
DATA_DIR='/offerly-data'
UPLOADS_DIR='/offerly-uploads'
COUNTRIES='["Saudi Arabia"]'
CATEGORIES='["Shopping","Travel","Restaurants & Cafes","Entertainment","Car Services","Health & Wellness","Others","Groceries"]'
LANGUAGES='["ar","en"]'
sh ./pull.sh
docker compose up --build -d