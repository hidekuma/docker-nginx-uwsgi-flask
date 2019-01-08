# Make Flask Web with docker (nginx + uwsgi)
- docker(18.09)
- docker-compose(1.23.2)

## Dockerfile
- ubuntu16.06
- python
- uwsgi
- flask

## Dockerfile.nginx
- nginx

## dockerfiles/etc/nginx
- nginx configurations

## dockerfiles/etc/uwsgi
- uwsgi ini file

---
# How to work?
uwsgi가 nginx와 flask를 연결해주는 역할을 하는데, 그 때 uwsgi는 ini파일을 참고하여 socket파일을 생성한다. 따라서 해당 socket파일을 볼륨을 떠주고 이 볼륨을 nginx가 볼 수 있게끔 구성하였다.

## Build nginx docker image
```bash
$ docker build -f Dockerfile.nginx -t hidekuma-nginx .
```

## Build uwsgi docker image
```bash
$ docker build -t hidekuma-uwsgi .
```

## Run with docker-compose.yml
```bash
$ docker-compose up -d
```
so you can see the directory ('socket')
Docker make socker directory if doker run

## Stop webserver
```bash
$ docker-compose down
```

