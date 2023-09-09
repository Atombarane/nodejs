FROM node:latest
WORKDIR /app
ENV NODE_ENV Dev
COPY package.json .
COPY package-lock.json .
RUN npm install 
RUN npm install pm2 -g
COPY . /app
EXPOSE 5000

CMD ["pm2-runtime", "index.js"]