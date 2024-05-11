# Stage 1: Build stage
#FROM itzg/minecraft-server as builder
#RUN mkdir /tempdata
#COPY ops.json /tempdata/ops.json

# Stage 2: Final stage
FROM itzg/minecraft-server
# COPY --from=builder /tempdata/ops.json /data/ops.json

# Set permissions for the ops.json file
# RUN chmod 644 /data/ops.json

# Ensure proper permissions for the data volume
# RUN chown -R minecraft:minecraft /data

ENV EULA=TRUE
ENV EXISTING_OPS_FILE=SYNC_FILE_MERGE_LIST
ENV OPS=071d4e48-c6ab-43a5-92e8-8a60ba8bdee2
EXPOSE 25565/tcp