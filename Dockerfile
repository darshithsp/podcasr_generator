FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git 
    #python3-PyYAML

# RUN apt-get install -y python3-Flask
# RUN apt-get install -y python3-PyYAML

# RUN pip install Flask
# RUN pip install -y PyYAML
RUN pip3 install -y PyYAML
RUN pip install PyYAML
# RUN pip install --upgrade pip
# RUN pip install pyyaml
# RUN apt-get install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
