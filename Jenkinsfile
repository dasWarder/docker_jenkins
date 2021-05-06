pipeline {
    agent none
    stages {
        stage('Run') {
            agent {
                docker {
                    label: 'docker'
                    image: 'openjdk:16-alpine'
                }
            }
            steps {
                echo 'Hello JDK'
                sh 'java -jar /app.jar'
            }
        }
    }
}