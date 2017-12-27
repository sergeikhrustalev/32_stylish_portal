server {

    listen 8081;

    location ~* opennet4.css {
        alias /home/sergei/devman/32_stylish_portal/dist/style.css;
    }

    location / {
        proxy_pass http://www.opennet.ru;
    }

}

