# Dockerfile for book_catalog
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the content of the book_catalog directory to /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 80

# Run the app with Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]
