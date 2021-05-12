pipeline {
    agent any
    tools{
        maven 'maven-v3.8.1' // get it from global tool
    }
    stages {
        stage('Build jar') {
            steps {
                script{
                    echo 'building application'
                    sh 'cd java-maven-app/ && mvn package'
                }
            }
        }
        stage('Build image') {
            steps {
                script{
                    echo 'building docker image'
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASS', usernameVariable: 'USER')]){
                        sh 'docker build -t mcalik77/sample-jenkins:v1 .'
                        sh "echo $PASS | docker login -u $USER --password-stdin"
                        sh 'docker push mcalik77/sample-jenkins:v1'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                script{
                    echo 'deploying application ...'
                }
            }
        }

    }
}

