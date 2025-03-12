# Dockerizing a Basic Flask App

This repository contains a Dockerized Version of a basic Flask application.

The original Non-Dockerized version of this app can be found here:
🔗 [Original Repository](https://github.com/meldafrawi/basic-flask-app)

## How to Use (Example for Latest Version)

### Step 1: Clone the Original Repository

Before using Docker, you need to clone the original Flask application:
```bash
git clone https://github.com/meldafrawi/basic-flask-app.git
cd basic-flask-app
```

### Using Docker (Without Compose)

1. **Build the Docker Image:**
   ```bash
   docker build -t flask-app .
   ```

2. **Run the Container:**
   ```bash
   docker run -d -p 80:5000 --name flask-container flask-app
   ```

3. **Check the App in Your Browser:** Open [http://localhost](http://localhost)

---

### Using Docker Compose

Instead of manually running containers, you can use `docker-compose.yml` to manage everything more easily.

1. **Run the application using Docker Compose:**
   ```bash
   docker-compose up -d
   ```
   - `-d` runs the containers in detached mode (background).
   - This will build the Flask app image (if not already built) and start the containers.

2. **Check the App in Your Browser:** Open [http://localhost:5000](http://localhost:5000)

3. **To Stop and Remove the Containers:**
   ```bash
   docker-compose down
   ```

---

Now your Flask app is fully containerized and can be managed easily using Docker or Docker Compose! 

