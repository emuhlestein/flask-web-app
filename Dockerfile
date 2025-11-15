# Use the official Python image as the base image
FROM python:3.9-slim
 
# Set the working directory in the container
WORKDIR /app
 
# Copy the requirements file into the container
COPY requirements.txt requirements.txt
 
# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
 
# Copy the Flask application into the container
COPY app.py app.py
 
# Expose port 5000 for the Flask app
EXPOSE 5000
 
# Command to run the Flask app
CMD ["python", "app.py"]
