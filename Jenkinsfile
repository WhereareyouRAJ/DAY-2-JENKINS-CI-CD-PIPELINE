pipeline { 
    agent any

    triggers {
            pollSCM('* * * * *') // Poll SCM every 1 minutes
     }
     stages {
        stage('Build') {
            steps {
                echo 'Building the application...'
                sh    ' docker build -t spring-petclinic-app .'
            }

        }
       
        stage('Deploy') {
            steps {
                echo 'Deploying the container...'
                 sh '''
                 docker stop spring-app || true
                    docker rm spring-app || true
                    docker run -d --name spring-app -p 8090:8080 spring-petclinic-app
                    '''
                echo 'Container deployed successfully!'
         
            }
        }
        stage('Test') {
            steps {
                echo  'Runnning Tests..'
                sh 'curl -s http://localhost:8090 | grep UP'
            }
        }
    }
    post {
        always {
            echo 'This will always run after the stages.'
        }
    }
}