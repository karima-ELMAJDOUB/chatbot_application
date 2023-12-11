# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy all files to the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that your Flask app runs on
EXPOSE 5000

# Define environment variable
ENV FLASK_APP=chatbot_flask.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
