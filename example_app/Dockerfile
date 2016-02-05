# docker build -t local/example .
# docker run --rm -p 1234:8000 -e HOSTNAME=localhost -t local/example
## with nginx-proxy
# docker run --rm -e VIRTUAL_HOST=demo.corso-javascript.it -e HOSTNAME=demo.corso-javascript.it -t local/example

FROM node:latest

#ADD package.json /code/
WORKDIR /code
ADD ./example /code
ADD ./production.json /code/configs/
RUN npm install
RUN npm run build

ENV PORT=8000 NODE_ENV=production

EXPOSE 8000

CMD npm run start
