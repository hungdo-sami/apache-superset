FROM apache/superset:latest

COPY init_user.sh /app/

# Chuyển đổi sang người dùng root để có quyền thay đổi file
USER root

RUN chmod +x /app/init_user.sh

# Nếu bạn muốn quay lại người dùng mặc định sau khi thực hiện lệnh chmod
USER superset
