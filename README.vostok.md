Vostok-flavor of [Reminiscence](#):

- armv7l architecture
- docker-only 


notes:

```
git 101
-------

# how to keep the master-branch up to date with upstream?

$ git clone https://github.com/s3h10r/reminiscence.git
$ git fetch upstream 
$ git checkout master
$ git merge upstream/master
$ git push

# how to check out this remote branch (vostok-flavour) and contribute to it?

$ git clone https://github.com/s3h10r/reminiscence.git
$ git fetch origin vostok-flavour
$ git checkout vostok-flavor

# how to make "good patches"

a PR conaining one commit is easier to review and best-practice 
(assuming there's only one person working on the patch)
=> using --amend and push --force is your friend :

$ git checkout -b patch-xyz
$ <doing changes>
$ git add <changed files>
$ git commit -m "working on patch-xyz"
$ git push
$ <doing further changes>
$ git add <changed files>
$ git commit --amend
$ git push --force
$ ...and so finally you can do your PR as one single commit
```

docker 101
----------

tips for development envs:

  * to get **usefull stacktraces** immediately **run stuff in foreground** (ommiting the -d flag)
    while developing
  * **mount the current sources directly to the container** allows **doing code-changes "live"**
    (every code-change on the host is automatically reflected inside the container's fs then)
    => page-reload triggers changed code immediately. 
    in any case of doubt: 
    => reboot the containers(s) (web,nginx)
       and the latest changes are up'n'running for sure without rebuild. :) 

misc

```
$ docker-compose up --build -d

s3h10r@vostok:~/development/reminiscence $ docker ps
CONTAINER ID        IMAGE                   COMMAND                  CREATED             STATUS                 PORTS                    NAMES
18e11a327d23        reminiscence_nginx      "nginx -g 'daemon of…"   6 minutes ago       Up 3 minutes           0.0.0.0:80->80/tcp       reminiscence_nginx_1
9d689d7acdca        reminiscence_web        "/usr/src/reminiscen…"   6 minutes ago       Up 3 minutes           0.0.0.0:8000->8000/tcp   reminiscence_web_1
766886b214f2        postgres:11             "docker-entrypoint.s…"   5 hours ago         Up 3 minutes           5432/tcp                 reminiscence_db_1
```

```
# jump into the container by opening a shell
$ docker exec -it reminiscence_web_1 /bin/bash

# check youtube-dl version
s3h10r@vostok:~/development/reminiscence $ docker exec -it reminiscence_web_1 /bin/bash
root@9d689d7acdca:/usr/src/reminiscence# youtube-dl --version
2020.01.24
root@9d689d7acdca:/usr/src/reminiscence# exit
# upgrading manually 
# (! 1. easier : rebuilding the docker-image regularily (pip install is part of it.)
# (  2. (just for the records) : sth. like an update-pips.sh on boot & via cron is possible too)
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

```
show logs of last startet container
-----------------------------------
$ docker logs $(docker ps -lq)
```


