FROM nginx:1.18.0-alpine

RUN apk update && apk upgrade && apk add bash

EXPOSE 80

WORKDIR /var/www

CMD ["nginx", "-g", "daemon off;"]