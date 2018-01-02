server {

    listen 8081;

    location ~* opennet4.css {
        alias {{ STYLE_CSS_PATH }};
    }

    location / {
        proxy_pass http://www.opennet.ru;
    }

}

