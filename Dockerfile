FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY .output ./.output

COPY content ./content

EXPOSE 3000

CMD ["node", ".output/server/index.mjs"]
