FROM tekgator/docker-mcmyadmin:latest

# Set environment variables
ENV PUID=1000
ENV PGID=100
ENV EULA=1

# Set up volumes
VOLUME /data

# Expose ports
EXPOSE 8080
EXPOSE 25565

