# ci-mesos

## Show Dockerfile for jenkins-master

* Check FROM jenkins:weekly
* Show Mesos native library setup
* Check Jenkins configuration
  * Check master num executors=0
  * Plugin management with .csv file
  * Check mesos plugin presence

## Show Marathon defintion file

```shell
$curl -X POST -H "Content-Type: application/json" http://MARATHON_PUBLIC_HOST:8080/v2/apps -d@jenkins.json
```

* Show application in Marathon interface
* Show log on Mesos slave

```shell
$docker ps
$docker logs -f $(docker ps -lq)
```

## Go to Jenkins through URL

## Configure Mesos Cluster on Jenkins

* Mesos native library path=/usr/lib/libmesos.so
* Mesos Master [hostname:port]=MESOS_HOST:5050
* Checkpointing=Yes

## Show the new Framework on Mesos interface

## Create on Slave Info

* Label String=java
* Idle Termination Minutes=30
* check Use Docker Containerizer
  * Docker Image=java:7

## Create a new Freestyle project on Jenkins

* Project name=test
* Restrict where this project can be run=java
* Add build step
  * Execute shell
  * Command=java -version
* Save Project

## Schedule a build

* Check Build Queue
* Check Build Executor Status
* Check Console Output

## Check Jenkins node

* Check node on Jenkins
* Check active tasks on Mesos Jenkins Scheduler framework
* Check container on Mesos slave

```shell  
$docker ps
```

## Create an other Slave Info

* Label String=java2
* Idle Termination Minutes=30
* check Use Docker Containerizer
  * Docker Image=java:7

## Create an other Freestyle project on Jenkins

* Project name=test2
* Restrict where this project can be run=java2
* Add build step
  * Execute shell
  * Command=java -version
* Save Project
