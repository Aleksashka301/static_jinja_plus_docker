# StaticJinjaPlus Docker

## Сборка образа

### Репозиторий

Скопируйте репозиторий
```bash
git clone https://github.com/Aleksashka301/static_jinja_plus_docker.git
```
```bash
cd static_jinja_plus_docker
```

Создание образа
```bash
docker build -t staticjinjaplus:latest .
```

## Запуск контейнера
```bash
docker run -it staticjinjaplus:latest bash
```

## Версии
- `latest` последняя версия
- `x.x.x-slim` облегчённая версия
