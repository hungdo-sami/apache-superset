FROM apache/superset:latest

COPY init_user.sh /app/
RUN chmod +x /app/init_user.sh

