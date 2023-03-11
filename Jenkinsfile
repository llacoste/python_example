pipeline {
    agent any

    environment {
        PYLINTHOME = ".lint"
    }

    stages {
        stage('Verify') {
            parallel {
                stage('Verify'){
                    agent { 
                        dockerfile true 
                    }
                    stages{
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
                                sh 'mkdir -p .lint && pylint tests/ flaskr/ | pylint-json2html -o .lint/pylint.html'
                                publishHTML (
                                    target: [
                                        allowMissing: false,
                                        alwaysLinkToLastBuild: false,
                                        keepAll: true,
                                        reportDir: '.lint',
                                        reportFiles: 'pylint.html',
                                        reportName: "Linting Report"
                                    ]
                                )
                            }
                        }
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