[![CircleCI](https://dl.circleci.com/status-badge/img/gh/nhaus12/udacity-project-ml-microservice-kubernetes/tree/main.svg?style=shield)](https://dl.circleci.com/status-badge/redirect/gh/nhaus12/udacity-project-ml-microservice-kubernetes/tree/main)

## Project Overview

This project showcases the operationalisation of a microservice, namely: a Python flask app. The app generates predictions about housing prices based on several input variables (e.g. average rooms in a home) via API calls using a pre-trained model. 

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Run example API call: `./make_prediction.sh`

---

## Repository directories and files

* `model_data` contains the data (.csv) file used to train the model used in the microservice
* `output_txt_files` contains two text files with command line output showing Docker and Kubernetes output related to the deployed microservice
* `app.py` is the source Python file for the (flask) microservice
* `make_prediction.sh` is a shell script which makes an API call to the microservice using pre-determined input values
* `requirements.txt` contains the Python dependencies needed to run `app.py`
* `run_docker.sh` builds, deploys, and runs the microservice as a Docker container
* `run_kubernetes.sh` deploys and runs the microservice via a Kubernetes cluster
* `upload_docker.sh` uploads the Docker file (built by running `run_docker.sh`) to Dockerhub