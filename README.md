# Docker Compose NGINX NodeJS

A DIY Cloud, run all the container you need on a "single server"

## Prerequisites

- Your domain(s) (ex. demo.corso-javascript.it) should point via DNS or `/etc/hosts` to your "single server"
- You have to install Docker as specified in the [official documentation](https://docs.docker.com/engine/installation/linux/ubuntulinux/)

## System Containers

These are the suggested system containers

- `jwilder/nginx-proxy (:80)`: It routes `yoursite.com` and `anothersite.com` to the correct internal container
- `dockerui/dockerui`: (optional) A nice overview of you Docker infrastructure. DO NOT leave it active on public internet

## App Containers

See `example_app/` as reference.

```
cd example_app

# 1. Initialize or Update your app code
git clone https://github.com/corso-javascript/react-isomorphic-minimal example

# 2. Set or Update your secrets `production.json`

# 3. Build an app container image. `web` is the name of the service
docker-compose build --no-cache web

# 4. Replace or Deploy the new app
docker-compose up -d

# Go to http://demo.corso-javascript.it

# (optionally) Inspect a Live container
docker exec -it exampleapp_web_1 bash

```

```
Copyright (c) 2016 Luigi Maselli https://corso-javascript.it

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
```
