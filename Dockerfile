FROM n8nio/n8n

# Готовим папку данных и права
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Работаем НЕ от root (важно, чтобы путь был /home/node/.n8n)
USER node
WORKDIR /home/node/.n8n

# Порт внутри контейнера (для справки)
EXPOSE 5678

# Базовая команда (без sh)
CMD ["n8n", "start"]

