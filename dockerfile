FROM node:latest
WORKDIR /app
COPY package.json 
COPY app.js 
RUN npm install
EXPOSE 3040
CMD [ "npm", "start" ]