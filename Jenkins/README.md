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

```bash
cat jenkins_home/secrets/initialAdminPassword
```