FROM ghcr.io/parkervcp/yolks:nodejs_20

USER root

RUN apt-get update && apt-get install -y \
    fontconfig \
    fonts-dejavu \
    fonts-liberation \
    fonts-noto \
    fonts-noto-cjk \
    fonts-noto-color-emoji \
    && rm -rf /var/lib/apt/lists/*

RUN fc-cache -f -v

LABEL org.opencontainers.image.source="https://github.com/TU_USUARIO_GITHUB/ptero-node20-fonts"

USER container
