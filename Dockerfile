From node:16-alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# Starting second container
From nginx
COPY --from=builder /app/build /usr/share/nginx/html