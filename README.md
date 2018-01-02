
# Nginx reverse-proxy with static content

## Preparing and generating config files

1. Creating python virtual environment

```
$python3 -m venv env
$ . env/bin/activate
```

2. Installing envtpl tool

```
$ pip install envtpl
```

3. Generating config files

STYLE_CSS_PATH valaible is a path where your style.css file from dist forder located.
  
```
$ STYLE_CSS_PATH=/your/path/to/style.css envtpl < config-templates/opennet.ru.tpl > opennet.ru
$ STYLE_CSS_PATH=/your/path/to/style.css envtpl < config-templates/ubuntu.com.tpl > ubuntu.com
```

## Setting up nginx debian/ubuntu way

4. Installing nginx

```
#apt install nginx
```

5. Copying config files to sites-available directory

```
#cp 32_stylish_portal/{opennet.ru,ubuntu.com} /etc/nginx/sites-available
```
**_PS: There are no need to edit or rewrite main /etc/nginx/nginx.conf file_**

6. Creating symbol links for enabling nginx site configuration

```
#ln -s /etc/nginx/sites-available/opennet.ru /etc/nginx/sites-enabled
#ln -s /etc/nginx/sites-available/ubuntu.com /etc/nginx/sites-enabled
```

7. Restarting nginx service

```
#service nginx restart 
```

## Checking results

Visit [http://localhost:8081](http://localhost:8081) and [http://localhost:8082](http://localhost:8082) to see proxied version of the sites.

# Project Goals

The code is written for educational purposes. Training course for web-developers - [DEVMAN.org](https://devman.org)
