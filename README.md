# docker-jenkins-slave-docker
Builder for Docker projects.

## Usage
Pass your local `docker.sock` and `docker` into container.

```
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock -v `which docker`:/bin/docker sanji/jenkins-slave-docker sudo docker ps

CONTAINER ID        IMAGE                                COMMAND                CREATED                  STATUS                  PORTS                    NAMES
51e7974d15ee        sanji/jenkins-slave-docker:latest    "/usr/local/bin/jenk   Less than a second ago   Up Less than a second                            ecstatic_goldstine     
4ed304bebb9d        mysql:5                              "/entrypoint.sh mysq   8 days ago               Up 8 days               0.0.0.0:3306->3306/tcp   mxcloud_mysql_1        
ac1768e34dbc        sanji/docker-controller:latest       "/bin/sh -c './sanji   11 days ago              Up 11 days                                       mxcloud_controller_1   
771031e06756        sanji/docker-mqtt-inspector:latest   "/bin/sh -c 'npm sta   11 days ago              Up 11 days              0.0.0.0:8080->8080/tcp   mxcloud_inspector_1    
2fd387fee97f        sanji/docker-mosquitto:latest        "/bin/sh -c '/usr/sb   11 days ago              Up 11 days              0.0.0.0:1883->1883/tcp   mxcloud_broker_1

```
