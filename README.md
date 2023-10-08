<!-- To build the docker image:   -->

docker build -t dockerdemo-image:latest .

<!-- To run the docker container  -->

docker run -d --name dockerdemo-container -p 80:80 dockerdemo-image:latest

<!-- Tag before pushing to docker hub -->

docker tag mawalou14/employee-management:v1 mawalou14/employee-management:v1
docker push mawalou14/employee-management:v1

<!-- to access the files in the docker image -->

kubectl exec pod <podName> -ti -- bash

<!-- Get logs of the image -->

kubectl logs <PodName>
