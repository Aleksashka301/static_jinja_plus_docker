FROM python:3.12-slim
WORKDIR /app
ADD --checksum https://github.com/Aleksashka301/StaticJinjaPlus/archive/refs/heads/main.zip /app/source.zip
RUN apt-get update && apt-get install -y unzip \
    && unzip /app/source.zip -d /app \
    && pip install --no-cache-dir -r /app/StaticJinjaPlus*/requirements.txt
CMD ["bash"]
