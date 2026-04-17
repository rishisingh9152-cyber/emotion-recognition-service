# Use official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy only requirements and install first (for layer caching)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the code
COPY . .

# Expose port for Flask
EXPOSE 5000

# Run the Flask server
CMD ["python", "api.py"]
