FROM node:16-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build --prod

FROM nginx:alpine
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
COPY --from=builder /app/nginx.tmpl /etc/nginx/conf.d/default.conf
EXPOSE 80