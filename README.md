## Message Service

This project was part of 2 of 2 services to host on kubernetes hosted on localhost ubuntu.
The purpose of this project was to demonstrate the ability of understanding DevOps by 
hosting two services umso (User Management Service) and meso (Message Service) with Spring Boot to act as an API service to a mysql pod (hosted on k8s as well) to respond with appropriate responses (code 200 or 404/403).

For simplicity to whoever is reading this I included in this repository the YAML files for mysql (part 1) and meso-dep-svc that 
I used to deploy and service as well as the SQL files to create the database and populate.

`kubectl get ep` gives me the IP of the pod of mysql that is hosted on k8s 
and used this IP in the JDBC driver url instead of localhost:3306.

To access the mysql instance from my terminal I used: `kubectl exec --stdin --tty {your mysql pod name} -- /bin/bash`

`mysql -h localhost -u root -ppassword` which gave me the ability to interact with MYSQL statements.

Using the provided .sql files, create and populate the database. Note the name of the database and the JDBC driver url.

same IP connection (part 1) but different database name
`jdbc:mysql://10.1.243.210:3306/messageservice`

User Management (part 1) had:
`jdbc:mysql://10.1.243.210:3306/userservice`


### Build .jar file, docker it, host it.
After finishing the Spring Boot properties and creating the specific java classes 
that require this service to perform the duties required,
````
./mvnw clean
./mvnw package
docker build . -t meso:local
docker save meso > meso.tar
microk8s ctr image import meso.tar
kubectl apply -f meso-dep-svc
````

## Challenges Faced
 - YAML creations for deployment and service
 - New to JPA
 - New to Spring Boot and had to consult the documentations
 - New to Kubernetes and had to consult the documentations
 - Project was failing on build (connection refused or no connection detected), this was due to the JDBC driver url
not properly connecting to MYSQL pod on k8s. (not localhost:3306, but rater should grab the IP of the pod, see application.properties)

Video link to demonstrate the build and service in action (shows umso as well): https://www.youtube.com/watch?v=6887G98OULQ