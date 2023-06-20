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
                	withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'hub-password', usernameVariable: 'hub-username')]) 
		     docker login -u ${hub-username} -p ${hub-password}
            }
        }
      

}
}
