FROM nginx:1.18.0-alpine

RUN apk update && apk upgrade && apk add bash

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]