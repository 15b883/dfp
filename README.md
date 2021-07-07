Dockerfile for Python


## build
```
docker build . -t fastapiweb:v1
```

## run
```
docker run --name web1 -d -p 80:8080 fastapiweb:v1
```

## check

http://localhost/