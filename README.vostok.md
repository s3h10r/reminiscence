Vostok-flavor of [Reminiscence](#):

- armv7l architecture
- docker-only 

notes:

```
$ docker-compose up --build -d

s3h10r@vostok:~/development/reminiscence $ docker ps
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                 PORTS                    NAMES
18e11a327d23        reminiscence_nginx      "nginx -g 'daemon of…"   6 minutes ago       Up 3 minutes           0.0.0.0:80->80/tcp       reminiscence_nginx_1
9d689d7acdca        reminiscence_web        "/usr/src/reminiscen…"   6 minutes ago       Up 3 minutes           0.0.0.0:8000->8000/tcp   reminiscence_web_1
766886b214f2        postgres:11             "docker-entrypoint.s…"   5 hours ago         Up 3 minutes           5432/tcp                 reminiscence_db_1


# jump into the container by opening a shell
$ docker exec -it reminiscence_web_1 /bin/bash

# check youtube-dl version
s3h10r@vostok:~/development/reminiscence $ docker exec -it reminiscence_web_1 /bin/bash
root@9d689d7acdca:/usr/src/reminiscence# youtube-dl --version
2020.01.24
root@9d689d7acdca:/usr/src/reminiscence# exit
# upgrading manually (later by update-pips.sh on boot & via cron :)
root@9d689d7acdca:/usr/src/reminiscence# pip install --upgrade youtube-dl
Collecting youtube-dl
  Downloading youtube_dl-2020.2.16-py2.py3-none-any.whl (1.8 MB)
     |████████████████████████████████| 1.8 MB 1.0 MB/s
Installing collected packages: youtube-dl
  Attempting uninstall: youtube-dl
    Found existing installation: youtube-dl 2020.1.24
    Uninstalling youtube-dl-2020.1.24:
      Successfully uninstalled youtube-dl-2020.1.24
Successfully installed youtube-dl-2020.2.16
root@9d689d7acdca:/usr/src/reminiscence# exit
```
