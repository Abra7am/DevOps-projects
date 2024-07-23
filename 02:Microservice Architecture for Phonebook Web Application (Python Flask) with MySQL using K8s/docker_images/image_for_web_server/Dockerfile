# Use the desired base image (python3.9 and alpine 3.19)
FROM python:3.9-alpine3.19

# Set the working directory to /app
WORKDIR /app

# Copy only the requirements file first to leverage Docker cache
COPY requirements.txt /app/

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python3", "./app.py"]

#!BEST PRACTICE!
#! Requirements was copied and run first to avoid uneccessary reinstallment operations.
