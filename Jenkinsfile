pipeline {
    agent any
    stages {
        stage('CHECKOUT_CODE') {
            steps {
                echo 'checking the gradle code'
                git branch: 'main', changelog: false, credentialsId: 'ravi_gitlab', poll: false, url: 'https://gitlab.com/dtvpfdops/testmicroservice.git'
            }
        }
        stage('Build') {
            steps {
                echo 'building the code'
                bat './gradlew tasks'
                bat './gradlew clean build'
                bat './gradlew build --scan'
            }
        }
        stage('Docker Build image') {
            steps {
                app = docker.build "my-image"
            }
        }
    }
}
