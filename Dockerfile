# Taking the base image as ubuntu and it can be any other base image as per requirement.
FROM ubuntu:16.04


#Running the update command to get all the updates for ubuntu
RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

#Defining the working directory.
WORKDIR ./app

#Running the install command to install all dependencies from requirements.txt file.
RUN pip install -r requirements.txt

#Copying all files to the work directory.
COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "web_app.py" ]
