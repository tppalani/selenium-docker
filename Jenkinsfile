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
                	
		     bat "docker login -u palani160385 -p Dell!@#00"
		      bat "docker push palani160385/selenium-docker"
			
            }
        }
		 
        stage('pull'){
            steps {
                bat "docker pull palani160385/selenium-docker:latest"
            }
        }

	stage("Start Grid"){
			steps{
				bat "docker-compose up -d hub chrome firefox"
				bat "docker-compose up search-module book-flight-module
			}
		}

      
	 }
	
      

}
