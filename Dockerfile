FROM node:25-alpine@sha256:bdf2cca6fe3dabd014ea60163eca3f0f7015fbd5c7ee1b0e9ccb4ced6eb02ef4

WORKDIR /app

COPY package.json index.js /app/

RUN npm set progress=false && \
  npm config set depth 0 && \
  npm install --omit=dev && \
  npm audit fix

ENV PORT 8080

EXPOSE $PORT

CMD [ "npm", "start" ]
