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
                        sh 'coverage run -m pytest && coverage report && coverage html'
                        publishHTML (
                            target: [
                                allowMissing: false,
                                alwaysLinkToLastBuild: false,
                                keepAll: true,
                                reportDir: 'htmlcov',
                                reportFiles: 'index.html',
                                reportName: "Coverage Report"
                            ]
                        )
                    }
                }
                stage ('Lint'){
                    steps{
                        sh 'pylint --output-format=html:pylint.html tests/ flaskr/'
                        publishHTML (
                            target: [
                                allowMissing: false,
                                alwaysLinkToLastBuild: false,
                                keepAll: true,
                                reportDir: '.',
                                reportFiles: 'pylint.html',
                                reportName: "Linting Report"
                            ]
                        )
                    }
                }
            }
        }
        stage('Build') {
            when {
                branch 'master'
            }
            steps {
                echo 'Building..'
            }
        }
        stage('Deploy') {
            when {
                branch 'master'
            }
            steps {
                echo 'Deploying....'
            }
        }
    }
}