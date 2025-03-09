📦 Laravel REST API + PostgreSQL
Proyek ini adalah REST API yang dikembangkan dengan Laravel dan menggunakan PostgreSQL sebagai database.
Buat Adit bisa langsung clone repo ini dan setup dengan langkah-langkah berikut.

✅ Fitur
CRUD Provinsi, Kab/Kota, Kecamatan, Kelurahan, dan entitas lainnya.
PostgreSQL sebagai database utama.
Struktur RESTful API standar.
Database dump (aset_management.sql) tersedia di repo untuk import cepat, ada di bagian database/dumps/aset_management.sql!

🛠️ Instalasi Project Laravel

1️⃣ Clone Repo

git clone https://github.com/rioputra0711/rest-api-laravel.git
cd rest-api-laravel

2️⃣ Install Dependency Laravel
install composer

3️⃣ Copy & Konfigurasi File .env
cp .env.example .env
Edit .env:

APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:xxxxxxxxxxxxxxxxxxxx==
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=aset_management
DB_USERNAME=postgres
DB_PASSWORD=(sesuain sama password postgresql)

4️⃣ Generate Key Laravel
php artisan key:generate

✅ Setup Database PostgreSQL

1️⃣ Buat Database Baru

Buka pgAdmin atau terminal:
CREATE DATABASE aset_management;

2️⃣ Import Database dari Dump SQL

Pakai terminal/psql:
psql -U postgres -d aset_management < database/dumps/aset_management.sql

✅ Pastikan aset_management.sql sudah ada di:
/database/dumps/aset_management.sql

✅ Jalankan Project Laravel

php artisan serve
Server akan jalan di:
http://127.0.0.1:8000

✅ Testing API di Postman
Contoh endpoint:

GET    http://127.0.0.1:8000/api/provinsi
POST   http://127.0.0.1:8000/api/provinsi
PUT    http://127.0.0.1:8000/api/provinsi/{id}
DELETE http://127.0.0.1:8000/api/provinsi/{id}

Pastikan pakai Header:
Content-Type: application/json

✅ Struktur Project

/app
/routes
/database
  /migrations
  /dumps
    aset_management.sql
    
✅ Catatan Penting
Jangan lupa pastikan .env sudah sesuai dengan setting database lokal kamu.

 
✅ Credits
Dibuat oleh:
Rio Putra
https://github.com/rioputra0711
