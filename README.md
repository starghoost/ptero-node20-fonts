# Odyssey Node.js 24 + Fonts

Imagen para Pterodactyl basada en el runtime oficial Node.js 24 e integrada con
las fuentes que necesitan los renderizadores Canvas y SVG de Odyssey.

## Imágenes publicadas

```text
ghcr.io/starghoost/ptero-node24-fonts:latest
ghcr.io/starghoost/ptero-node20-fonts:latest
```

`ptero-node20-fonts` se conserva únicamente como alias compatible para servidores
existentes. Desde esta actualización ambos tags contienen Node.js 24; no se
publicará nuevamente Node.js 20.

## Contenido

- Node.js 24 sobre `ghcr.io/ptero-eggs/yolks:nodejs_24`.
- `fontconfig`.
- DejaVu, Liberation y Noto, incluyendo CJK y emoji.
- Segoe UI Regular y Bold desde `fonts/`.
- Comprobación de la versión mayor de Node y resolución de Segoe UI durante el
  build.

## Pterodactyl

Configura como Docker Image:

```text
ghcr.io/starghoost/ptero-node24-fonts:latest
```

Los servidores que todavía usan el alias antiguo pueden seguir temporalmente con:

```text
ghcr.io/starghoost/ptero-node20-fonts:latest
```

Después de guardar la imagen, detén e inicia el servidor. La consola debe mostrar
`v24.x.x` antes de ejecutar `bash start-prod.sh`.
