This is a simple Flask web application that returens the text response Hello World! when it is browased to.

The web app uses the builtin Flask web server to serve results on port 5000.

++++++++
 Setup
++++++++

Application dependencies are listed in requirements.txt for installation. 

+++++++++++++++++++++++++++++++++
Running the app in local machine:
+++++++++++++++++++++++++++++++++

Once dependencies have been satasfied The Flask web application can be executed by running the following command.

python ./web_application.py 


+++++++++++++++++++++++++++++++++
Running the as docker container:
+++++++++++++++++++++++++++++++++
- Once docker setup is done application can be run as a docker container with help of below command.

- Run the docker image with below command 
docker run -d -p 5000:5000 <url from docker repo>
or
docker run -d -p 5000:5000 <your docker image name> (If built your docker image in local machine)

Optional:
- To build docker image in your local machine run this command from the directory where you have your code.
docker build -t python-hello-world .




