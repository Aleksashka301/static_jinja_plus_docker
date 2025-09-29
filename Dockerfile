ARG BASE_IMAGE=python:3.12-slim
ARG VERSION=main

FROM ${BASE_IMAGE}
WORKDIR /app
ADD --checksum=sha256:e618b9f4873fb8ecf7b69447cd35749a034a96ab870dd3c311f6740031102fb4 \
    https://github.com/Aleksashka301/StaticJinjaPlus/archive/refs/heads/main.zip \
    /app/source.zip

RUN apt-get update && apt-get install -y unzip \
    && unzip /app/source.zip -d /app \
    && rm /app/source.zip \
    && pip install --no-cache-dir -r /app/StaticJinjaPlus*/requirements.txt
    
EXPOSE 8000
CMD ["bash"]
