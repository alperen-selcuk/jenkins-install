docker volume create jenkins_path

docker run --name jenkins -d -v jenkins_path:/var/jenkins_home -p 8080:8080 -p 50000:50000 jenkins/jenkins:lts
