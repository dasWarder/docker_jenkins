pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'maven:3-alpine' }
            steps {
                echo 'Hello, Maven'
                sh 'mvn -B -DskipTests clean package'
            }
        }
        stage('Run') {
            agent { docker 'openjdk:16-alpine' }
            steps {
                echo 'Hello JDK'
                sh 'java -jar /app.jar'
            }
        }
    }
}