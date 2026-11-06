FROM docker.io/library/node:26-alpine@sha256:8996bb5821d62a8fd9bb27c1cb07462f3fdce6e47d640c6a881ead0b064ce216

WORKDIR /app

COPY package.json index.js /app/

RUN npm set progress=false && \
    npm config set depth 0 && \
    npm install --omit=dev && \
    npm audit fix

ENV PORT=8080

EXPOSE $PORT

CMD [ "npm", "start" ]
