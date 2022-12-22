pipeline {
  agent any
  stages {
    stage('Bucket provisioning') {
      steps {
        sh '''terraform init
terraform apply -var= "bucket_name=s3chay1998feb164567ce"
'''
      }
    }

  }
}
