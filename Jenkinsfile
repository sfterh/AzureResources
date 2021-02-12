pipeline {
    agent any
    stages {
        stage('Deploy') {
            steps{
                withCredentials([azureServicePrincipal('0cec1713-b8dd-4e80-ae85-db9285a02a79')]) {
                sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                sh 'az network vnet create -g rg-west-prod-IAUCDR -n jenkinsVNET'
                }
            }
        }
    }
}
