FROM apache/superset:latest

# Copy the initialization script to the container
COPY init_user.sh /app/

# Switch to root to modify file permissions
USER root
RUN chmod +x /app/init_user.sh

# Switch back to superset user
USER superset

# Run commands to set up Superset, including loading sample data
RUN superset db upgrade \
    && superset init \
    && superset load_examples

# Copying the init script can also be done here if necessary
ENTRYPOINT ["/app/init_user.sh"]
