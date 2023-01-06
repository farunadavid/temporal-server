# Deploying a Hello World Golang Application With CI/CD using temporal

** **

**This deployment is done usind the following stacks</br>**
- Jenkins ⚡️⚡️⚡️⚡️⚡️
- Kubernetes✨
- Docker✨
- Temporal-server✨
- Golang✨

**Lets Get into it shall we...**
We start first with the setup of the temporal server and we use Docker-compose for this setup by editing some files and ensure the server and it's relevant dependencies are set-up

** **
**RUN THE FOLLOWING COMMAND**
** **
``` 
cd Kubernetes
docker-compose up -d 

```
**After the server is up and running we setup the cluster that will be deployed using terraform.**

**We write a terraform configuration file to achieve this deployment.Which is not a subject of this deployment**

**We Then ensure the application is set-up and we run it using the following command</br>**
  `go run ./worker/main.go` 
  ** **
**That command starts the worker processes for running thw workflows connected to the application**
**To start up the application and execute the application we look at the below snippet and output**
`go run ./starter/main.go`
** **
![**Worker application**](https://github.com/Osiephri/temporal-server/blob/master/img/Screenshot%202023-01-06%20at%2008.02.20.png)

**Now we have seen the worker started, lets now view the web UI to see the workflow execution**
** **
![**WEB UI**](https://github.com/Osiephri/temporal-server/blob/master/img/Screenshot%202023-01-06%20at%2011.38.10.png)

**Now that we have the web UI running completed status on the workflow, lets try to chenge it's input and lets see if we still have a resilient service**
![**Code Change Snippet**](https://github.com/Osiephri/temporal-server/blob/master/img/Screenshot%202023-01-06%20at%2011.48.08.png)
** **

**With that change lets look at the UI for the mode of its operation**
![**Mode of operation](https://github.com/Osiephri/temporal-server/blob/master/img/Screenshot%202023-01-06%20at%2009.00.49.png)

**Then lets see what happens after its completed**
![**Completed status**](https://github.com/Osiephri/temporal-server/blob/master/img/Screenshot%202023-01-06%20at%2009.00.49.png)

** **
**Since we see how this server operates lets examine how to work with CI/CD**
## Deploying  a fault tolerant application using CI/CD running with a temporal-server
**To deploy Temporal-server on a dashboard in a kubernetes environment run the following commands**
``` 
cd kubernetes && cd k8s && kubectl apply -f .

```
**And we have the Dashboard present HERE</br>**
** **
[Temporal UI on Kuberenetes](http://ab51700b642b34c638ad963b8ad583ff-372483372.eu-central-1.elb.amazonaws.com:8080/)
** **
**But lets look at it using the DevOps way**
- **AS DevOps Engineers we use Jenkins to Deploy the workloads**
- **We create a pipeline and then we deploy the workloads by using webhooks thjat has been proconfigured in the environments**

# Final Remarks
**We see the importance of temporal server in ensuring resiliency and high availability of the instances**
**Ruuning temporal is very vital for running microservices applications that needs high resiliecy**
**I once deployed a Java Microservice application with temporal and this application was great because temporal leveraged it's ability to send retries even when one services is down to ensure there is highj availabilty at all times without throwing up an error.**
**This service can be improved by building it's dependence and enusring the instances are made multiple for loadBalancing and redundance**

** **

**That's the little i can discuss in this documentation.**
**Thanks for making it to the end✊✊✊👊🏼🫰🫰.**
