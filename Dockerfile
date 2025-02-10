FROM node:latest AS builder

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 5173


FROM builder AS dev

ENTRYPOINT ["npm"]
CMD ["run", "dev"]


FROM builder as prod

RUN npm run build

ENTRYPOINT ["npm"]
CMD ["run", "start"]