FROM python:3.12-alpine

WORKDIR /app

RUN apk add --update --no-cache gcc musl-dev python3-dev libffi-dev openssl-dev

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]