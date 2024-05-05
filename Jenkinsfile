pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                echo 'pulling source'
                checkout scm
            }
        }

        stage('static analysis') {
            steps {
                echo 'running analysis'
            }
        }
        stage('running tests') {
            steps {
                echo 'running analysis'
            }
        }
    }
}
