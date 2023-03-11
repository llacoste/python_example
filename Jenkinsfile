pipeline {
    agent any

    stages {
        stage('Verify') {
            agent { 
                dockerfile true 
            }
            stages {
                stage ('Unit'){
                    steps{
                        sh 'pytest'
                    }
                }
                stage ('Lint'){
                    steps{
                        sh 'echo todo'
                    }
                }
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