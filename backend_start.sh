#!/bin/bash
pip install mysqlclient
python3 manage.py makemigrations
python3 manage.py migrate
supervisord -c /etc/supervisor/supervisord.conf
