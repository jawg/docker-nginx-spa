# Docker nginx SPA

## Supported tags and respective `Dockerfile` links

-	[`mainline`, `1`, `latest`](https://github.com/jawg/docker-nginx-spa/blob/master/mainline/debian/Dockerfile)
-	[`mainline-alpine`, `1-alpine`, `alpine`](https://github.com/jawg/docker-nginx-spa/blob/master/mainline/alpine/Dockerfile)
-	[`stable`](https://github.com/jawg/docker-nginx-spa/blob/master/stable/debian/Dockerfile)
-	[`stable-alpine`](https://github.com/jawg/docker-nginx-spa/blob/master/stable/alpine/Dockerfile)

## What is nginx?

Nginx (pronounced "engine-x") is an open source reverse proxy server for HTTP, HTTPS, SMTP, POP3, and IMAP protocols, as well as a load balancer, HTTP cache, and a web server (origin server). The nginx project started with a strong focus on high concurrency, high performance and low memory usage. It is licensed under the 2-clause BSD-like license and it runs on Linux, BSD variants, Mac OS X, Solaris, AIX, HP-UX, as well as on other *nix flavors. It also has a proof of concept port for Microsoft Windows.

> [wikipedia.org/wiki/Nginx](https://en.wikipedia.org/wiki/Nginx)

![logo](https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/nginx/logo.png)

## What is a Single Page Application?

A single-page application (SPA) is a web application or web site that interacts with the user by dynamically rewriting the current page rather than loading entire new pages from a server. This approach avoids interruption of the user experience between successive pages, making the application behave more like a desktop application. In a SPA, either all necessary code – HTML, JavaScript, and CSS – is retrieved with a single page load, or the appropriate resources are dynamically loaded and added to the page as necessary, usually in response to user actions.

> [wikipedia.org/wiki/Single-page_application](https://en.wikipedia.org/wiki/Single-page_application)

## How to use this image

This image is based on the official [nginx](https://hub.docker.com/_/nginx) image, you can use it in the same way.

```console
$ docker run --name some-nginx -p 8080:80 -v /some/content:/usr/share/nginx/html:ro -d jawg/nginx-spa
```

## Additional features

- Run your server on a differrent port with the environment `NGINX_LISTEN_ADDRESS`
- gzip on selected mime types
- no-cache on html files
- 24h of expiry for images
- avoid large body in requests (POST/PUT...)