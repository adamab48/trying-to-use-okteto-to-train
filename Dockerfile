FROM rasa/rasa:latest AS BASE


WORKDIR /app

USER root
# upgrade pip version
RUN pip install openai
RUN pip install websockets==10.0
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

ADD config.yml config.yml
ADD domain.yml domain.yml
ADD credentials.yml credentials.yml
ADD endpoints.yml endpoints.yml

ENTRYPOINT [""]
