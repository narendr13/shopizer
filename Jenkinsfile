pipeline{
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage("checkout") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/narendr13/shopizer.git']])
                }
            }
        }
        stage("build") {
            steps {
                script{
                    sh "mvn clean install"
                }
            }
        }
    }
}
