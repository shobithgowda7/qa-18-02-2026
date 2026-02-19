pipeline {
	agent any

	stages {
		stage('checkout') {
			steps {
			   git branch: 'main',
				url: 'https://github.com/shobithgowda7/qa-18-02-2026.git'
			      }
			}
		stage('Docker Build') {
			steps {
			   sh '''
				docker build -t myapp:1.0 .
			      '''
			      }
			}
		stage('Deploy on EC2') {
            steps {

                sshagent(credentials: ["${myapp}"]) {
                    sh '''
                    ssh -o StrictHostKeyChecking=no $ubuntu@$65.0.181.49 << EOF

                    docker stop myapp || true
                    docker rm myapp || true
                    docker rmi $myapp:$1.0 || true

                    docker run -d \
                      --name myapp \
                      -p 8080:8080 \
                      $myapp:$1.0

                    EOF
                    '''
                }
            }
		}
	}
}
