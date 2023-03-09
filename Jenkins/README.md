# Jenkins

## Building Jenkins

```bash
docker build -t jenkins-docker .
```

## Starting Jenkins

```bash
docker run -it -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd)/jenkins_home:/var/jenkins_home jenkins-docker
```

## Get the password

This should be presented after running, but you can always find it with the following command.

```bash
cat jenkins_home/secrets/initialAdminPassword
```

## Setup

1. Navigate to [http://localhost:8080](http://localhost:8080) you should be presented with the following:

![Unlock](images/unlock.jpg)

1. Log in with the password above abd you should be presented with the following:

![Plugins](images/plugins.jpg)

1. Select `Select plugins to install`

1. In addition to what is already selected, install the following:
    - HTML Publisher
    - Github plugin

1. Select install at the bottom right