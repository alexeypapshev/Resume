FROM python:3.12

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей и устанавливаем зависимости
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Копируем проект в контейнер
COPY . /app/

# Устанавливаем переменные окружения
ENV PYTHONPATH=/app

# Запускаем сервер
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]