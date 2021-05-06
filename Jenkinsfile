pipeline {
    agent none
    stages {
        stage('Run') {
            agent { docker 'openjdk:16-alpine' }
            steps {
                echo 'Hello JDK'
                sh 'java -jar /app.jar'
            }
        }
    }
}