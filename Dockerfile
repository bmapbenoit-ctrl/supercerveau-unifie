FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

ENV PORT=3001
ENV MODE=manual

EXPOSE 3001

CMD ["npm", "start"]
