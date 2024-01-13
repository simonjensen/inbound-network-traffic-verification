FROM node:21-alpine

WORKDIR /app

COPY index.js /app

ENV PORT 8080

EXPOSE $PORT

CMD ["node", "index.js"]
