pipeline {
    agent none
    stages {
        stage('Run') {
            agent {
                 docker {
                          // Set both label and image
                          label 'docker'
                          image 'openjdk:16-alpine'
                          args '--name docker-node' // list any args
                 }
            }
            steps {
                echo 'Hello JDK'
                sh 'java -jar /app.jar'
            }
        }
    }
}