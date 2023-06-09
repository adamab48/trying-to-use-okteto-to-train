FROM ubuntu:latest AS BASE


WORKDIR /app

USER root
# upgrade pip version
RUN python -m pip install --upgrade "pip<20"
RUN pip install openai
RUN pip install websockets==10.0
RUN pip install rasa==2.8.12
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN apt install unzip
RUN unzip awscliv2.zip
RUN ./aws/install

ADD config.yml config.yml
ADD domain.yml domain.yml
ADD credentials.yml credentials.yml
ADD endpoints.yml endpoints.yml

ENTRYPOINT [""]
