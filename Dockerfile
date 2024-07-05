#This is the image is going to be used
FROM ubuntu:latest

#Set the working directory in the container
WORKDIR /app

# Copy the current directory content into the container /app
COPY . /app

# This is the command to first update the ubuntu, after intall python and pip 
RUN apt-get update && apt-get install -y python3 python3-venv python3-pip

# Create a virtual enviroment
RUN python3 -m venv venv

# Activate the virtual enviroment and also install the requirements
RUN . venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# Make the port available
EXPOSE 500

ENV FLASK_APP=main.py

#Run
CMD [ "venv/bin/python","main.py" ]

