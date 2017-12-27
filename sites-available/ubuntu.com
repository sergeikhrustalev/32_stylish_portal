server {

    listen 8082;

    location ~* styles.css {
        alias /home/sergei/devman/32_stylish_portal/dist/style.css;
    }

    location / {
        proxy_pass https://www.ubuntu.com;
    }

}

