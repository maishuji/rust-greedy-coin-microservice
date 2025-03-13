# Change Coin Microservice with Rust and Axum

This is a microservice built with Rust and the Axum framework for handling coin change calculations.

The original code can be found [here](https://gitlab.com/dukeaiml/duke-coursera-labs/rust-axum-greedy-coin-microservice/-/tree/main?ref_type=heads).

## Introduction

This microservice computes the change in coins (cents) for a given amount of money (in dollars and cents) using a greedy algorithm. It is designed for use with Rust and the Axum framework and can be easily deployed locally using Docker.

## Usage

To run the microservice locally using Docker, follow these steps:

### 1. Set the Environment Variable
Set the environment variable `DOCKER_USER` with your Docker username. This can be done by running:
```sh
export DOCKER_USER=<your_docker_username>
```

### 2. Build the Docker Image
Build the Docker image using the provided `Makefile`:
```sh
make builddocker
```

### 3. Run the Docker Container
Start the container in the background:
```sh
make rundocker
```

### 4. Access the Service
Once the container is running, open your browser and go to the following URL to access the main root:
```sh
localhost:3000
```

### 5. Get the Coin Change
To get the change for a specific amount (in dollars and cents), navigate to the following endpoint:
```sh
localhost:3000/change/{dollars}/{cents}
```
Replace `{dollars}` and `{cents}` with the amount you want to calculate.

For example:
```sh
localhost:3000/change/5/75
```
This will return the change in coins for 5 dollars and 75 cents.

### 6. Stop the Docker Container
After you're done, you can stop the container using the following commands:
- First, list the running containers to find the container ID:
  ```sh
  docker ps
  ```

- Then, stop the container using the container ID:
  ```sh
  docker stop <container_id>
  ```

## Additional Information

- **Build the Docker Image Manually:** If you prefer not to use the Makefile, you can build the image manually:
  ```sh
  docker build -t myimage .
  ```

- **Remove the Docker Container:** To remove a stopped container:
  ```sh
  docker rm <container_id>
  ```

- **Remove the Docker Image:** If you no longer need the image, you can delete it:
  ```sh
  docker rmi myimage
  
