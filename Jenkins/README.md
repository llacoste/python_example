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

## Setup Jenkins

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

## Setup your pipeline

1. Select `Create a job`

![Create a job](images/create_a_job.png)

2. You will be presented with the following:

![Create job](images/create_job.png)

3. Enter the name of your repository, select `Multibranch Pipeline`, and click `OK`

4. Under `Branch Sources` select `Add source` then select `Github`

5. For `Credentials` select `+ Add` then select `Jenkins`

6. Fill out the form with the following:
    - Domain: `Global credentials`
    - Kind: `Username with password`
    - Scope: `Global`
    - Username: `Jenkins`
    - Password: The token you generated from Github
    - ID: Leave blank
    - Description: Something appropriate

7. Save the credentials

8. Enter your repository URL in `Repository HTTPS URL` then click `Validate` to make sure you have access.

9. Select `Save` at the bottom of the page to save you configuration.

Jenkins will scan the repository for braches that have a `Jenkinsfile` and then automatically build these branches.