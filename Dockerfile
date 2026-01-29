FROM public.ecr.aws/docker/library/node:24

WORKDIR /usr/src/app

# копіюємо тільки app
COPY app/package*.json ./
RUN npm install

COPY app/ .

EXPOSE 3000
CMD ["node", "index.js"]

