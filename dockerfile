FROM node:latest
WORKDIR /app
COPY package.json /app
COPY app.js /app
RUN npm install
EXPOSE 3040
CMD [ "npm", "start" ]