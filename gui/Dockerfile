FROM node:24 AS builder

WORKDIR /usr/local/app
COPY . .
RUN npm install
RUN npm run build

FROM nginx:alpine

COPY --from=builder /usr/local/app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

