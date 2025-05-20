FROM node:20-alpine

WORKDIR /app

COPY . .

RUN npm install --omit=dev && npm cache clean --force

EXPOSE 3000

CMD ["npm", "start"]
