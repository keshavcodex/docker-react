FROM node:16-alpine as builder

WORKDIR /usr/app

COPY /package.json .
RUN npm i
COPY . .
RUN npm run build

# /usr/app/build
# This is run phase
FROM nginx
COPY --from=builder /usr/app/build /usr/share/nginx/html
