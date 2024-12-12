FROM python:3.10-slim

# Define Work Directory
WORKDIR /usr/src/app

# Mount Project into countainer
COPY . .

# Use Pip to Install project in directory
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port 5000
EXPOSE 5000

CMD [ "python", "app.py" ]