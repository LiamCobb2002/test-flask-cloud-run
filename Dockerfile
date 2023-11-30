FROM python:3.8-alpine

# Copy only the necessary files (cat.html) to the container
COPY cat.html /app/cat.html

# Set the working directory to the directory containing cat.html
WORKDIR /app

# Expose port 8000 (you can change it to any port you prefer)
EXPOSE 8000

# Set the entry point to run a simple Python HTTP server serving only cat.html
CMD ["python", "-m", "http.server", "8000"]
