# Stage 1: Build stage
FROM itzg/minecraft-server as builder
RUN mkdir /tempdata
COPY ops.json /tempdata/ops.json

# Stage 2: Final stage
FROM itzg/minecraft-server
COPY --from=builder /tempdata/ops.json /data/ops.json

# Set permissions for the ops.json file
RUN chmod 644 /data/ops.json

# Ensure proper permissions for the data volume
RUN chown -R minecraft:minecraft /data

ENV EULA=TRUE
ENV OPS="JOPGOOD"
EXPOSE 25565/tcp