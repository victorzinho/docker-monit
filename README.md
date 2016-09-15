# docker-monit
[Monit](https://mmonit.com/monit/) installation on top of official [debian:jessie](https://hub.docker.com/_/debian/) image.

## [Automated builds](https://hub.docker.com/r/vicgonco/monit/) 

* Latest ([Dockerfile](https://github.com/victorzinho/docker-monit/blob/master/Dockerfile))

## Running

Run detached, exposing port 80 and mounting a custom `monit.d` configuration directory:

```
docker run -d -p 2812:2812 -v /path/to/monit.d:/etc/monit.d --name=monit monit
```

Get a [minimal monit.d directory](https://github.com/victorzinho/docker-monit/tree/master/monit.d) to start with.

