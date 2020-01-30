FROM ubuntu 

# default to bash shell
#SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install --assume-yes python3-venv \
    python3-pip

RUN pip3 install --no-cache-dir --upgrade pip

COPY requirements.txt /usr/local/python/

# install python
RUN python3 -m venv /usr/local/python/env && . /usr/local/python/env/bin/activate && \ 
  pip install --no-cache-dir -r /usr/local/python/requirements.txt 

COPY start-consumer.sh /tmp 
RUN chmod a+x /tmp/*.sh
RUN cp /tmp/start-consumer.sh /usr/bin

ENTRYPOINT ["/bin/bash", "/usr/bin/start-consumer.sh"]
