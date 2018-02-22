
# Data Crow Server Container [![Data Crow](https://sourceforge.net/p/datacrow/icon?1368991885)](http://www.datacrow.net)

This container runs a Data Crow Server. https://sourceforge.net/u/rwaals/
Data Crow is a free software collection tool designed to catalog your collections or keep your inventory ([www.datacrow.net](http://www.datacrow.net)).

### Prereqs to Run Data Crow Server Container

* docker Community Edition ([Docker](https://www.docker.com))

### How to Run This Image

Simple example on how to run, so you can test. Just type in terminal:
```sh
$ docker run -it --rm -p 8080:8080 linhares/data-crow-server
```
The above command is just for testing purposes. It just starts a container on port 8080 of your machine.
Payattention that when you close your terminal all saved data will be lost. 

For a persistent and more professional way, you can use the following command. Just type in terminal:
```sh
$ docker run -it --rm -p 8080:8080 linhares/data-crow-server
```


docker run -it --rm -p 8080:8080 linhares/data-crow-server
http://localhost:8080/datacrow

### Environment Variables

The following environment variables can be passed along to the container in case you do not want the default value.

| Environment Variable | Description | Default Value |
| -------------------- | ----------- | ------------- |
| XMX | Memory | 1024m |
| IP | | 127.0.0.1 |
| PORT | | 9000 |
| IMAGESERVERPORT || 9001 |
| WEBSERVERPORT || 8080 |
| CREDENTIALS || SA |





