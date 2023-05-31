FROM node:18-alpine3.17

LABEL maintainer="Gatovsky | L20530228@cancun.tecnm.mx"

RUN apk update && apk upgrade \
    && apk add --no-cache git \
    wget \
    curl \
    ca-certificates \
    vim \
    npm \
    bash

RUN npm install -g sass

WORKDIR /home/node/sbedujs
RUN chown -R node:node /home/node/sbedujs
USER node

RUN echo "alias l='ls -aF'" > ~/.bash_aliases \
    && echo "alias ll='ls -ahlF'" > ~/bash_aliases \
    && echo "alias ls='ls --color=auto --group-directories-first'" > bash_aliases

CMD [ "bash" ]
