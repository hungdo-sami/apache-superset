FROM apache/superset:latest
COPY init_user.sh /app/
USER root
RUN chmod +x /app/init_user.sh
USER superset
