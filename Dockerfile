ARG BASE_IMAGE=python:3.12-slim
ARG VERSION=main

FROM ${BASE_IMAGE}
WORKDIR /app
ADD https://github.com/Aleksashka301/StaticJinjaPlus/archive/refs/heads/${VERSION}.zip /app/source.zip

RUN apt-get update && apt-get install -y unzip \
    && unzip /app/source.zip -d /app \
    && rm /app/source.zip \
    && pip install --no-cache-dir -r /app/StaticJinjaPlus*/requirements.txt
    
EXPOSE 8000
CMD ["bash"]
