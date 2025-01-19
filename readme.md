# jenkins integrate with github

## install jenkins using docker

### docker build

```bash
docker build -t jenkins-with-python .
```

### docker run

```bash
docker run -d --name jenkins -p 8080:8080 -p 50000:50000 jenkins-with-python
```

### access jenkins

```bash
localhost:8080
```

### docker exec for jenkins password

```bash
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

## Generate Personal Access Token

1. In github settings
2. Select developer setting
3. Choose Personal Access Token and Create new token
 
## Git configure in jenkins

1. In jenkins install github plugin
2. To add project click `Dashboard > New Item`
3. Choose git as SCM
4. Provide Git config required parameter, update PAT as secret text
5. Choose build system command as execute shell
6. Add shell command as below

    ```bash

    pip install -r requirements.txt && nox
    ```
