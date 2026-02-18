pipeline {
	agent any

	stages {
		stage('checkout') {
			steps {
			   git branch: 'main',
				url:https://github.com/shobithgowda7/qa-18-02-2026.git
			      }
			}
		stage('Docker Build') {
			steps {
			   sh '''
				docker build -t myapp:1.0 .
			      '''
			      }
			}
				
