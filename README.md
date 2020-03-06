[![CircleCI](https://circleci.com/gh/muddge/udacity_devops_project_5.svg?style=svg)](https://circleci.com/gh/muddge/udacity_devops_project_5)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Project Summary

Created a local environment to run a Docker container for a Python Flask web application that makes a housing price prediction for a given JSON input, and uploaded image to Docker hub.

* Configured a Dockerfile which sets up a container running the Flask web app code, making sure it passes the hadolint test

* Successfully built Docker container to accept prediction input on local port 80, and added more logging within Docker image to capture input payload

* Uploaded image to repo on personal Docker hub account

* Installed and configured Kubernetes to grab the above image from Docker hub, deploy the image locally, and forward the container port to a host port, and input test successfully returned prediction

* Used circleci/github integration (via circleci config.yml file in github repo) for the project repo to pass the automated test environment (shown by PASSED icon in this Readme)

### Project Files

* app.py: Flask code to set up web server to accept inputs for housing price prediction

* Dockerfile: specifies container base image, commands to install dependencies, and which Python script to run at launch

* make_prediction.sh: script provides test JSON payload to test with app.py running in container

* Makefile: provides shorthand syntax to run python virtual environment setup, pip install, Dockerfile and python lint testing, and validating and running circleci locally

* requirements.txt: required dependencies for Python Flask web app

* run_docker.sh: script to build and run Docker image

* run_kubernetes.sh: script to grab image from Docker hub, create deployment, expose a port for it and use port forwarding to access container web app on port 8000 to local port 80

* upload_docker.sh: script to login to Docker hub, tag and upload image

* .circleci/config.yml: circleci configuration file to run automated testing environment on CircleCI via github integration

* docker_out.txt: Docker logging output from running test prediction

* kubernetes_out.txt: terminal output showing pod name, status, port forwarding and handling text

[![CircleCI](https://circleci.com/gh/muddge/udacity_devops_project_5.svg?style=svg)](https://circleci.com/gh/muddge/udacity_devops_project_5)
