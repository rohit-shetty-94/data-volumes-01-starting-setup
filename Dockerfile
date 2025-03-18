FROM node

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . .

# VOLUME [ "/app/feedback" ]

# ENV PORT=80
# insted of using from Dockerfile we can also use from cmd line using .env file

EXPOSE $PORT

CMD [ "node", "server.js" ]