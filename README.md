## Message Service

`kubectl get ep`, gives you the ip of the pod of mysql, use this ip in the JDBC driver url instead of
localhost:3306

`kubectl exec --stdin --tty {your mysql pod name} -- /bin/bash`

`mysql -h localhost -u root -ppassword`, You now have access to mysql, you insert into, select..etc

PLEASE NOTE THIS IS THE SAME MYSQL User Mangement Service, same IP connection but different database name
`jdbc:mysql://10.1.243.210:3306/messageservice`

User Management:
`jdbc:mysql://10.1.243.210:3306/userservice`


### Build .jar file, docker it, host it.

````
./mvnw clean
./mvnw package
docker build . -t meso:local
docker save meso > meso.tar
microk8s ctr image import meso.tar
kubectl apply -f meso-dep-svc
```