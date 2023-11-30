FROM python:3.8-alpine

# Copy requirements and install dependencies (if any)
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt

# Copy the entire app directory to the container
COPY . /app

# Set the working directory to the directory containing the HTML file
WORKDIR /app

# Expose port 8000 (you can change it to any port you prefer)
EXPOSE 8000

# Set the entry point to run a simple Python HTTP server serving cat.html
CMD ["python", "-m", "http.server", "8000"]
