server {

    listen 8081;

    location ~* opennet4.css {
        alias /path/to/dist/style.css;
    }

    location / {
        proxy_pass http://www.opennet.ru;
    }

}

