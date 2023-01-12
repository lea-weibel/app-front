FROM node:lts-alpine
RUN mkdir /app
WORKDIR /app
COPY . .
RUN npm i
RUN npm run build && \
    npm install -g serve
EXPOSE 3000
CMD serve -s build