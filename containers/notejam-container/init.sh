#/bin/bash

echo "Creating Database if it does not exits"
echo -e "SELECT 'CREATE DATABASE notejam' WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'notejam')\gexec" | psql "host=$DB_URL user=$DB_USER password=$DB_PASSWORD dbname=postgres sslmode=require"
echo "Done"
python /notejam/manage.py syncdb
python /notejam/manage.py migrate
python /notejam/manage.py runserver 0.0.0.0:8000
