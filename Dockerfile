# Use the official Python image as a base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the FastAPI app and requirements into the container
COPY . /app

# Copy SSL certificates into the container
COPY cert.pem /app/cert.pem
COPY key.pem /app/key.pem

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port for HTTPS
EXPOSE 81

# Run the FastAPI app with Uvicorn and SSL
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "81", "--ssl-keyfile", "/app/key.pem", "--ssl-certfile", "/app/cert.pem"]
