
# Nginx reverse-proxy with static caching.

## Setting up nginx debian/ubuntu way

1. Installing nginx

```
#apt install nginx
```

2. Copying config files to site-available directory

```
#cp 32_stylish_portal/site-available/* /etc/nignx/site-available
```
**_PS: There no need to edit or rewrite main /etc/nginx/nginx.conf file_**

3. Creating symbol links for enabling nginx site configuration

```
#ln -s /etc/nginx/site-available/opennet.ru /etc/nginx/site-enable
#ln -s /etc/nginx/site-available/ubuntu.com /etc/nginx/site-enable
```

4. Restarting nginx service

```
#service nginx restart 
```

## Checking results

Visit [http://localhost:8081](http://localhost:8081) and [http://localhost:8082](http://localhost:8081) to see proxied version of the sites.

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
