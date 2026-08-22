FROM ghcr.io/ptero-eggs/yolks:nodejs_24

USER root

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    fontconfig \
    fonts-dejavu \
    fonts-liberation \
    fonts-noto \
    fonts-noto-cjk \
    fonts-noto-color-emoji \
    && rm -rf /var/lib/apt/lists/*

COPY ./fonts /usr/share/fonts/custom

RUN fc-cache -f \
    && node --version | grep -Eq '^v24\.' \
    && fc-match "Segoe UI" | grep -qi "segoeui"

LABEL org.opencontainers.image.source="https://github.com/starghoost/ptero-node20-fonts" \
      org.opencontainers.image.title="Odyssey Node.js 24 with fonts" \
      org.opencontainers.image.description="Pterodactyl Node.js 24 runtime with Segoe UI, Noto, DejaVu and Liberation fonts"

USER container
