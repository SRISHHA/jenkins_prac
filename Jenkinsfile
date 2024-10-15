pipeline {
    agent any

    stages {
        stage('Git-check') {
            steps {
                echo 'Cloning repository...'
                
            }
        }

        stage('Build') {
            steps {
                echo 'Running build...'
                
            }
        }
    }

    post {
        always {
            echo 'This always runs after every build.'
        }
        success {
            echo 'Build succeeded!'
        }
        failure {
            echo 'Build failed.'
        }
    }
}
