FROM rasa/rasa:latest AS BASE
WORKDIR /app
USER rasa
# upgrade pip version
RUN pip install openai
RUN pip install websockets==10.0
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN apt install unzip
RUN unzip awscliv2.zip
RUN ./aws/install
RUN chown -R 42420:42420 /app

ADD config.yml config.yml
ADD domain.yml domain.yml
ADD credentials.yml credentials.yml
ADD endpoints.yml endpoints.yml

ENTRYPOINT [""]
