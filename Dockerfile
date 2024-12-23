FROM --platform=$TARGETPLATFORM node:alpine

WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

RUN npm install axios

COPY ./script.js .

CMD ["node", "script.js"]
