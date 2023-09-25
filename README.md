<!-- To build the docker image:   -->
docker build -t dockerdemo-image:latest . 

<!-- To run the docker container  -->
docker run -d --name dockerdemo-container -p 80:80 dockerdemo-image:latest