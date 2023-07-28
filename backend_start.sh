#!/bin/bash
# 更新软件包列表
python3 manage.py makemigrations
python3 manage.py migrate
supervisord -c /etc/supervisor/supervisord.conf
