# Use Python 3.10 slim image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy the contents of inventory_management into /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 80

# Start the application using Uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

