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
		        bat "podman machine init"
		        bat "podman machine start"
                	bat "podman build -t palani160385/selenium-docker ."
            }
        }

         stage('push Image') {
            steps {
                	
		     bat "podman login -u palani160385 -p Dell!@#00"
		      bat "podman push palani160385/selenium-docker"
			
            }
        }
		 
        stage('pull'){
            steps {
                bat "podman pull palani160385/selenium-docker:latest"
            }
        }

	stage("Start Grid"){
			steps{
				bat "podman-compose up -d hub chrome firefox"
				bat "podman-compose up search-module book-flight-module"
			}
		}

      
	 }
	
      

}
