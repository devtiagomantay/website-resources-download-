# website-resources-download-

## Why?
The objective of this project is to do a measurement of the loading time of websites. 


## How to run?
To run this project you must have python3 and pip3 (You can install with apt-get on Ubuntu-based OS)

To install the dependencies with pip3, get inside the path of project then run the command:

> pip3 install -r requirements.txt


And to run the project type:

> python3 server.py


If everything works correctly, you will see the message:

Bottle v0.12.18 server starting up (using WSGIRefServer())...
Listening on http://localhost:8080/


The open the browser on localhost on 8080 port


To create virtualenv:

> sudo pip install virtualenv

Creates virtual environment

> virtualenv .venv

Activate virtual environment

> source .venv/bin/activate

To deactivate virtual environment

> deactivate

## Changing the websites to measure

For now the websites are on the server.py file (hardcoded ;)), you can just change it and run.
