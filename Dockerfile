FROM python:3.8

RUN pip install -U virtualenv==20.0.9

COPY distutils.cfg /usr/local/lib/python3.8/distutils/distutils.cfg

CMD [ "/bin/bash"]
