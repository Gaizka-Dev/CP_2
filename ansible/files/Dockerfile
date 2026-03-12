FROM nginx:latest

ARG BUILD_DATE

LABEL org.opencontainers.image.title="mynginx"
LABEL org.opencontainers.image.description="nginx personalizado con web incluida"
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.author="Gaizka"

COPY index.html /usr/share/nginx/html/index.html