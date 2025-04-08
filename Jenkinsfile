pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')
    }
    stages {
        stage('Build') {
            steps {
                echo 'Simulating build...'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Simulating deploy...'
            }
        }
        stage('Test') {
            steps {
                echo 'Simulating test...'
            }
        }
    }
    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
