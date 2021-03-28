pipeline {
    agent {
        label "main"
    }
    stages {
        stage('Start CI environment') {
            steps {
                sh 'make ci-docker-up'
            }
        }
        stage('UI tests') {
            steps {
                sh 'make ci-test-ui'
            }
        }
        stage('API tests') {
            steps {
                sh 'make ci-test-api'
            }
        }
    }
    post {
        cleanup {
            sh 'sudo make docker-down'
        }
        unsuccessful {
            sh 'sudo make docker-logs'
        }
    }
}
