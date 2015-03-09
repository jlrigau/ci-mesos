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

## Create a Slave Info for Java

* Label String=java
* Idle Termination Minutes=30
* check Use Docker Containerizer
  * Docker Image=java:7

## Create a new project with Java on Jenkins

* Project type=Freestyle project
* Project name=Projet Java
* Restrict where this project can be run=java
* Add build step
  * Execute shell
  * Command=java -version
* Save Project and run it

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

## Configure Maven

* On Configure System add a new Maven installation
  * Name=maven
  * Check Install automatically
  * Install from Apache with version 3.2.2

## Create a Slave Info for Maven

* Label String=maven
* Idle Termination Minutes=30
* check Use Docker Containerizer
  * Docker Image=jlrigau/maven-git

## Create a new Maven project on Jenkins

* Project type=Maven project
* Project name=Projet Maven
* Restrict where this project can be run=maven
* Add build step
  * Execute shell
  * Command=java -version
* Save Project and run it
