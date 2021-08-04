FROM python:3.6

Run pip install virtualenv
ENV VIRTUAL_ENV=/venv 
RUN virtualenv venv -p python3
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /app
COPY . /app

# Install dependencies:
RUN pip install -r requirements.txt

EXPOSE 5000

# Run the application:
ENTRYPOINT ["python", "app.py"]
