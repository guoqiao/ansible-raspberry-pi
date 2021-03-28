#!/bin/bash

sudo apt-get update

# utils
sudo apt-get install -y apt-transport-https software-properties-common wget curl

# python
sudo apt-get install -y python3-dev python3-pip python3-venv

# hardware
sudo apt-get install -y lm-sensors

sudo python3 -m pip install -U requirements.txt
