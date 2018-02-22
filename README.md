# Data Crow Server Container [![Data Crow](https://sourceforge.net/p/datacrow/icon?1368991885)](http://www.datacrow.net)
---
This container runs a Data Crow Server
Data Crow is a free software collection tool designed to catalog your collections or keep your inventory ([www.datacrow.net](http://www.datacrow.net)).
Data Crow is manteined by https://sourceforge.net/u/rwaals/

### Prereqs to Run Data Crow Server Container
---
* docker Community Edition ([Docker](https://www.docker.com))

### How to Run This Image
---
Simple example on how to run, so you can test. Just type in terminal:
```sh
$ docker run -it --rm -p 8080:8080 linhares/data-crow-server
```

After that, wait it load and then it will be acessible through your browser: http://localhost:8080/datacrow, user "sa", blank password.

The above command is just for testing purposes. It just starts a container on port 8080 of your machine.
Pay attention that when you close your terminal all saved data will be lost. 

For a persistent and more professional way, you may use the following command. Just type in terminal:
```sh
docker run -d -p 8080:8080 -p 9000:9000 -p 9001:9001 -v /opt/mydatacrow:/opt/dc-user -e "XMX=2048m" linhares/data-crow-server
```
The above command will:
* start a background container
* persist database's data in a dir named: /opt/mydatacrow
* open port 8080 for web navigation, port 9000 and 9001 for Data Crow Client to connect
* use 2048Mb (2Gb) for java (Tomcat)


### Environment Variables
---
The following environment variables can be passed along the container in case you do not want the default value.

| Environment Variable | Description | Default Value |
| -------------------- | ----------- | ------------- |
| XMX | Memory of the JVM | 1024m |
| IP | IP or name of the server where you want to point images | 127.0.0.1 |
| PORT | Port used for Data Crow Client to connect | 9000 |
| IMAGESERVERPORT | Port used for Data Crow Client to connect the images | 9001 |
| WEBSERVERPORT | Port used to connect via browser | 8080 |

### Support
---

**Support in this container or suggestions for this container:**
* Go to my repository (https://github.com/marlinhares/data-crow-server) in Github  and open an issue, or
* Open an issue directly [clicking here](https://github.com/marlinhares/data-crow-server/issues/new)

**Data Crow Support:**
* Official Web Site - http://www.datacrow.net
* Data Crow Author - https://sourceforge.net/u/rwaals/


