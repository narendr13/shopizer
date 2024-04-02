pipeline{
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage("checkout") {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'git', url: 'https://github.com/narendr13/shopizer.git']])
                }
            }
        }
        stage("build") {
            steps {
                script {
                    sh "mvn clean install"
                }
            }
        }
        stage("image build") {
            steps {
                script {
                    sh "docker build -t narendra98/shopizer:${BUILD_NUMBER} ."
                    sh "docker login -u narendra98 -p dckr_pat_emXMiH4I043C-ubFlGPntT8S6u8 && docker push narendra98/shopizer:${BUILD_NUMBER}"
                }
            }
        }
    }
}
