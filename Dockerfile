echo 'FROM node:14-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "app.js"]
