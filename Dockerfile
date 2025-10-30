From python:3.11-slim
#base image , comes with minimal Linux system(Debian slim), Debian --> stable Linux OS,  and python 3.11 installed

Workdir /app

Copy requirements.txt .

Run pip install --no-cache-dir -r requirements.txt

Copy . .

#expose CLoud Run Port
expose 8080

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8080"]
#8080 is a Cloud Run port on Google Cloud VM


