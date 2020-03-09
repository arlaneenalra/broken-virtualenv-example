To build:

```
$ docker build . --tag broken-venv
```

To Run:

```
$ docker run --rm -it broken-venv
```

This should put you in a shell in an environment with a broken virtualenv

To exhibit the problem:

```
$ cd /tmp
$ virtualenv venv
$ source venv/bin/activate
```


Example:

```
csalch% python-borked % docker build . --tag broken-venv
Sending build context to Docker daemon  78.34kB
Step 1/4 : FROM python:3.8
 ---> f88b2f81f83a
Step 2/4 : RUN pip install -U virtualenv==20.0.9
 ---> Using cache
 ---> f642310b27ea
Step 3/4 : COPY distutils.cfg /usr/local/lib/python3.8/distutils/distutils.cfg
 ---> Using cache
 ---> e975252df889
Step 4/4 : CMD [ "/bin/bash"]
 ---> Using cache
 ---> f2fb46c1081d
Successfully built f2fb46c1081d
Successfully tagged broken-venv:latest
csalch% python-borked % docker run --rm -it broken-venv
root@1bcf55709d39:/# cd /tmp
root@1bcf55709d39:/tmp# virtualenv venv
created virtual environment CPython3.8.2.final.0-64 in 362ms
  creator CPython3Posix(dest=/tmp/venv, clear=False, global=False)
  seeder FromAppData(download=False, pip=latest, setuptools=latest, wheel=latest, via=copy, app_data_dir=/tmp/tmpfaa5yqhy/seed-app-data/v1)
  activators BashActivator,CShellActivator,FishActivator,PowerShellActivator,PythonActivator,XonshActivator
root@1bcf55709d39:/tmp# source venv/bin/activate
bash: venv/bin/activate: No such file or directory
root@1bcf55709d39:/tmp# ls -l venv/
total 12
drwxr-xr-x 3 root root 4096 Mar  9 22:16 lib
drwxr-xr-x 2 root root 4096 Mar  9 22:16 mybin
-rw-r--r-- 1 root root  224 Mar  9 22:16 pyvenv.cfg
root@1bcf55709d39:/tmp#
```

