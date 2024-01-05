---
version: "2.1"
services:
  radarr:
    image: lscr.io/linuxserver/radarr:latest
    container_name: radarr
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /encrypted/docker/radarr/config:/config
      - /encrypted/movies:/movies #optional
      - /downloads:/downloads #optional
    ports:
      - 7878:7878
    restart: unless-stopped

