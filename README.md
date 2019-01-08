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
