FROM node:alpine

RUN npm install -g hue-cli
ADD entrypoint.sh entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
