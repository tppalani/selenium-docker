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
                	bat "C:/Program Files/Docker/Docker/docker build -t palani160385/selenium-docker ."
            }
        }
}
}
