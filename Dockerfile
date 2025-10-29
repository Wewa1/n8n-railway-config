FROM n8nio/n8n

# Работаем под root, чтобы не было проблем с правами на примонтированный том
USER root

# Домашняя директория node-пользователя и папка данных n8n
ENV HOME=/home/node

# Создаём папку под данные и даём права (на случай первого старта без тома)
RUN mkdir -p /home/node/.n8n && chmod -R 777 /home/node/.n8n

# Рабочая директория — папка данных
WORKDIR /home/node/.n8n

EXPOSE 5678

# Базовый старт (порт и userFolder пробросим из Railway Start Command)
CMD ["n8n", "start"]
