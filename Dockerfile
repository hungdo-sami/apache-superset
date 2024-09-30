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
    && superset init

# Optional: Remove superset load_examples if not needed or causing issues
# && superset load_examples

# Set ENTRYPOINT to execute the script
ENTRYPOINT ["/bin/bash", "/app/init_user.sh"]
