FROM node:25-alpine

WORKDIR /app

COPY package.json index.js /app/

RUN npm set progress=false && \
  npm config set depth 0 && \
  npm install --omit=dev && \
  npm audit fix

ENV PORT 8080

EXPOSE $PORT

CMD [ "npm", "start" ]
