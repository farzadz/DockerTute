## Minimal Docker Setup

`docker build .`

Building from scratch:

`docker build --no-cache .`

Building from scratch with tag:

`docker build --no-cache -t farzadz/sample-flask:v1`


## Debugging Dockerfile

When building get the latest layer id:

```
...
Step 3/6 : WORKDIR /home/app
 ---> Running in db2bb966811a
Removing intermediate container db2bb966811a
 ---> bee1b32bd5dd
Step 4/6 : ADD . .
 ---> 327d0308b251
```
(`327d0308b251` here)


`docker run -it 327d0308b251 /bin/bash` 


## Debugging running container

`docker ps` for getting the CONTAINER id

Getting interactive terminal in the running container:

`docker exec -it container_id /bin/bash`



## Tagging a previously built image


`docker tag image_id user/image_name:version`

Example:

`docker tag 79e30c8c7daf farzadz/sample_flask:v1`


## Exposing container ports


`docker run -p hostPort:containerPort image_`




