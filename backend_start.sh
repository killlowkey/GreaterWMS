#!/bin/bash
# 更新软件包列表
# apt-get update

# 升级已安装的软件包
# apt-get upgrade -y

# 安装 gcc、default-libmysqlclient-dev 和 pkg-config
# apt-get install -y gcc default-libmysqlclient-dev pkg-config

# 清理缓存和不需要的文件
# rm -rf /var/lib/apt/lists/*

# pip3 install -r requirements.txt

python3 manage.py makemigrations
python3 manage.py migrate
supervisord -c /etc/supervisor/supervisord.conf
