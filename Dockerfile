# Use latest Python image
FROM python:3.14-rc-slim-bookworm

# Set working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 8080
EXPOSE 8080

# Run Flask app
ENTRYPOINT ["python"]
CMD ["app.py"]
