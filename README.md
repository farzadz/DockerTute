## Minimal Docker Setup

`docker build .`

`docker build --no-cache .`

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


