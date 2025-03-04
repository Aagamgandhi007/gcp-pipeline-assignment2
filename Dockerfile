# Use a base image
FROM python:3.9  # Change this if your app needs a different image

# Set the working directory
WORKDIR /app

# Copy all files into the container
COPY . /app

# Install dependencies (if you have a requirements.txt file)
RUN pip install -r requirements.txt

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]  # Change if your app uses another file
