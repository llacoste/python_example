pipeline {
    agent any

    stages {
        stage('Verify') {
            agent { 
                dockerfile true 
            }
            stage ('Unit'){
                sh 'pytest'
            }
            stage ('Lint'){
                sh 'echo todo'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}