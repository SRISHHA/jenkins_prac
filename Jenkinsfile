pipeline {
    agent any

    stages {
        stage('Git-check') {
            steps {
                echo 'Cloning repository...'
                git branch: 'main', url: 'https://github.com/SRISHHA/jenkins_prac.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Running build...'
                sh 'chmod +x ./unit.sh'  // Add this step to grant execute permission
                sh './unit.sh'  // Now run the script
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
