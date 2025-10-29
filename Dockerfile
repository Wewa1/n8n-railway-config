FROM n8nio/n8n

USER root

# Рабочая директория с данными n8n (креды, воркфлоу и т.п.)
WORKDIR /home/node/.n8n

# Открываем стандартный порт контейнера (не критично для Railway, но полезно)
EXPOSE 5678

# Запускаем n8n на том порту, который задаёт Railway
# (Railway задаёт $PORT на этапе запуска)
CMD ["sh", "-lc", "n8n start --port=$PORT"]
