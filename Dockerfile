FROM rasa/rasa:latest AS BASE


WORKDIR /app

USER root
# upgrade pip version
RUN pip install openai
RUN pip install websockets==10.0

ADD config.yml config.yml
ADD domain.yml domain.yml
ADD credentials.yml credentials.yml
ADD endpoints.yml endpoints.yml
