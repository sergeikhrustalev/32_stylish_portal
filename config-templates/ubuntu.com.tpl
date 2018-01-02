server {

    listen 8082;

    location ~* styles.css {
        alias {{ STYLE_CSS_PATH }};
    }

    location / {
        proxy_pass https://www.ubuntu.com;
    }

}

