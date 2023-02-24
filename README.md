# Task
- Build a simple personal website and package it in a container image based off Nginx and publish it on the Docker registry.

- Create a Google Kubernetes Engine (GKE) cluster on GCP with at least 2 nodes create a deployment with your website image. Make sure its publicly available.

- Submit the Dockerfile and Kubernetes manifests for this project along with a screenshot of the website visible in your browser. Please clean up to avoid generate unnecessary cost.


# Steps
1. Build the image `docker build -t mini-project-3 .`



# Note
- The `CMD ["nginx", "-g", "daemon on;"] && tail -f /dev/null` in the Dockerfile
tells Docker to start the Nginx process with the `daemon on;` option, and then execute the `tail` command to keep the container running. The `tail` command will output nothing (because it's reading from `/dev/null`), but it will keep the container running until it's manually stopped.