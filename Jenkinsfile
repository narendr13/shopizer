pipeline{
    agent any
    stages {
        stage("checkout") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/narendr13/shopizer.git']])
                }
            }
        }
    }
}
