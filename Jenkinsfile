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
                	bat "docker build -t palani160385/selenium-docker ."
            }
        }

         stage('push Image') {
            steps {
                	bat "docker push -t palani160385/selenium-docker"
            }
        }
      

}
}
