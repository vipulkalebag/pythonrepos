pipeline {
    agent any

    stages {
        stage('Build'){
         steps{
            echo 'building phase'
         }
        }

        stage('Deploy'){
         steps{
            git branch: 'main' , url: 'https://github.com/vipulkalebag/pythonrepos.git'
            echo 'Deploy phase'
         }
        }

        stage('to see project'){
            steps{
                sh 'ls'
                sh 'docker --version'
                sh 'docker build -t myjenkimg .'
                sh 'docker run --name myjenkcont3 -itd -p 5000:5000 myjenkimg'
            }
        }

        stage('destroy'){
            steps{
                sh 'docker stop myjenkcont3'
                sh 'docker rm myjenkcont3'
                sh 'docker rmi myjenkimg'
            }
        }
    }
}
