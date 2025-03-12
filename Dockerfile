# Stage-1: Pull the Base Image
FROM ubuntu:18.04

# Stage-2: Install Python
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y python3.7 python3-pip && \
    rm -rf /var/lib/apt/lists/*
RUN python3 --version

# Stage-3: Install the App Requirements
WORKDIR /flask-app
COPY . .
RUN python3.7 -m pip install -r requirements.txt

# Stage-4: Expose Port 5000
EXPOSE 5000

# Stage-5: Run the Application
CMD ["python3.7", "routes.py"]
