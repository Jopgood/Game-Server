FROM itzg/minecraft-server

ENV EULA=TRUE
EXPOSE 25565/tcp

CMD ["-d", "-it", "-p", "25565:25565"]
