pipeline {
    agent any 

	 stages {
        stage('Build'){
            steps {
                bat "C:/maven/bin/mvn clean package -DskipTests"
            }
        }
}
}