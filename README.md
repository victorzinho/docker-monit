# docker-monit
[Monit](https://mmonit.com/monit/) installation on top of official [debian:jessie](https://hub.docker.com/_/debian/) image.

## [Automated builds](https://hub.docker.com/r/vicgonco/monit/)


* Latest, 5.23.0 ([5.23.0/Dockerfile](https://github.com/victorzinho/docker-monit/blob/master/5.23.0/Dockerfile))
* 5.19.0 ([5.19.0/Dockerfile](https://github.com/victorzinho/docker-monit/blob/master/5.19.0/Dockerfile))


## Running

Run detached, specifying hostname, exposing port 80 and mounting a custom `monit.d` configuration directory:

```
docker run -h example.com -d -p 2812:2812 -v /path/to/monit.d:/etc/monit.d --name=monit monit
```

Get a [minimal monit.d directory](https://github.com/victorzinho/docker-monit/tree/master/monit.d) to start with.


