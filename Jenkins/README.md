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

2. Log in with the password above abd you should be presented with the following:

![Plugins](images/plugins.jpg)

3. Select `Select plugins to install`

4. In addition to what is already selected, install the following:
    - HTML Publisher
    - Github plugin

5. Select install at the bottom right Jenkins will install the plugins and then present you with the following:

![Admin](images/admin.png)

6. Fill out the form and then select `Save and Continue`

7. Accept the url and continue then click `Start using Jenkins`

8. Congratulations! Jenkins is up and running!