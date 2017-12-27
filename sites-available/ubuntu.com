server {

    listen 8082;

    location ~* styles.css {
        alias /path/to/dist/style.css;
    }

    location / {
        proxy_pass https://www.ubuntu.com;
    }

}

