pipeline {
    agent any

    environment {
        PYLINTHOME = ".lint"
    }

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
                        sh 'mkdir .lint && pylint tests/ flaskr/ > .lint/lint.json && pylint_report .lint/lint.json -o .lint/lint.html'
                        publishHTML (
                            target: [
                                allowMissing: false,
                                alwaysLinkToLastBuild: false,
                                keepAll: true,
                                reportDir: '.',
                                reportFiles: 'lint.html',
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