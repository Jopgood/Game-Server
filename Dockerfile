# Use the base image from itzg for Minecraft server
FROM itzg/minecraft-server

# Expose port 25565 for Minecraft server
EXPOSE 25565

# Start Minecraft server when the container starts
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "/minecraft-server.jar", "nogui"]
