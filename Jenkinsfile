pipeline{
    agent any
    stages {
        stage("checkout") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/narendr13/shopizer.git']])
                }
            }
        }
    }
}
