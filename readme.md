## install jenkins using docker

docker pull jenkins/jenkins

docker run -d --name jenkins-rehost -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins

localhost:8080

docker exec jenkins-rehost cat /var/jenkins_home/secrets/initialAdminPassword

## run pytest

````bash

pip install -r requirements.txt

nox
```