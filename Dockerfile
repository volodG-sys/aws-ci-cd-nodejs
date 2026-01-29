# Використовуємо офіційний образ Node.js
FROM node:14

# Встановлюємо робочу директорію
WORKDIR /usr/src/app

# Копіюємо package.json і встановлюємо залежності
COPY app/package*.json ./
RUN npm install

# Копіюємо код застосунку
COPY app/ .

# Відкриваємо порт
EXPOSE 8080

# Запускаємо застосунок
CMD ["node", "index.js"]