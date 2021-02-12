pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
                withCredentials([azureServicePrincipal('0cec1713-b8dd-4e80-ae85-db9285a02a79')]) {
                bat 'az login --service-principal -u ae850628-c022-4fef-9eb2-159a8ad5f743 -p JvFEy~r8Bvp3wG-DT5~Qg956t9hC49bZ7. -t 1bfc3093-d35c-42eb-8df1-47a59e098146'
                bat 'az network vnet create -g rg-west-prod-IAUCDR -n jenkinsVNET'
                }
            }
        }
    }
}
