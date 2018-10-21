pipeline {
    agent any
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage ('Dockerize') {
            steps {
                sh "sudo docker build . -t tomcatwebapp:${env.BUILD_ID}"
            }
        }
        stage ('Start Tomcat') {
            steps {
                sh "whoami"
                sh "docker run -p 8181:8080 tomcatwebapp:${env.BUILD_ID}"
                # docker run -p 8181:8080 tomcatwebapp:8
            }
        }
    }
}
