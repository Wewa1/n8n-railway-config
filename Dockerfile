ROM n8nio/n8n

USER root

# Копируем файлы окружения, если нужно
COPY .env /home/node/.n8n/.env

# Устанавливаем рабочую директорию
WORKDIR /home/node/.n8n

# Открываем порт
EXPOSE 5678

# Запуск n8n
CMD ["n8n", "start"]
