pipeline {
	agent any

	stages {

		stage('Build') {
			agent {
				docker {
					image: 'maven:3.6.3-openjdk-11-slim'
					args '-v /tmp/.m2:/root/.m2'
				}
			}
			when {
				branch "main"
			}
			steps {
				script {
					sh 'mvn verify'
				}
			}
		}

	}

}