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

Сборка конкретной версии (тега или ветки)
```bash
docker build --build-arg VERSION=0.1.0 -t staticjinjaplus:0.1.0 .
```

## Запуск контейнера

Запуск
```bash
docker run -it staticjinjaplus:latest bash
```

Запуск с пробросом
```bash
docker run -it -p 8000:8000 staticjinjaplus:latest bash
```
## Запукс скрипта

Перейдите в папку со скриптом
```bash
cd StaticJinjaPlus-main
```

Запустите скрипт
```python
python main.py
```

## Версии
- `latest` последняя версия
- `x.x.x-slim` облегчённая версия
