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
                                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                                    sh 'coverage run -m pytest'
                                }
                                sh 'coverage report && coverage html'
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
                                catchError(buildResult: 'FAILURE', stageResult: 'FAILURE') {
                                    sh 'pylint --output-format=json tests/ flaskr/ > pylint.json'
                                }
                                sh 'cat pylint.json | pylint-json2html -o pylint.html'
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