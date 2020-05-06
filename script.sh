#!/bin/bash

sudo apt update && sudo apt install python3-pip

sudo pip3 install virtualenv

virtualenv .venv

source .venv/bin/activate

pip3 install -r requirements.txt

python3 server.py

deactivate

sudo rm -r .venv/c