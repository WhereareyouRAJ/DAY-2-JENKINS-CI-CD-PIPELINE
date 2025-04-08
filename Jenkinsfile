pipeline {
    agent any

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t spring-petclinic-app .'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying Docker container...'
                sh '''
                    docker stop spring-app || true
                    docker rm spring-app || true
                    docker run -d --name spring-app -p 8090:8080 spring-petclinic-app
                '''
            }
        }

        stage('Test') {
            steps {
                echo 'Testing application...'
                sh 'sleep 5' // give app some time to start
                sh 'curl -s http://localhost:8090 | grep UP'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}

