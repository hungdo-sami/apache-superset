#!/bin/bash
# init_user.sh

# Đợi cho Superset khởi động hoàn toàn
sleep 10

# Tạo người dùng quản trị
superset fab create-admin \
    --username admin \
    --firstname Admin \
    --lastname User \
    --email admin@superset.com \
    --password admin

# Chạy các lệnh cần thiết khác (nếu có)
superset db upgrade
