pipeline {
    agent any 

	 stages {
        stage('Build'){
            steps {
                bat "C:/maven/bin/mvn clean package -DskipTests"
            }
        }

       stage('Build Image') {
            steps {
                script {
                	app = docker.build("palani160385/selenium-docker")
                }
            }
        }
}
}
