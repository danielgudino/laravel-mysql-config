FROM nginx:1.18.0-alpine
LABEL maintainer="danielgudino"

RUN apk update && apk upgrade && apk add bash

EXPOSE 80

WORKDIR /var/www

CMD ["nginx", "-g", "daemon off;"]