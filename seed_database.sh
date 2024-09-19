#!/bin/bash

rm db.sqlite3
rm -rf ./werewolfapi/migrations
python3 manage.py migrate
python3 manage.py makemigrations werewolfapi
python3 manage.py migrate werewolfapi
python3 manage.py loaddata users
python3 manage.py loaddata tokens

