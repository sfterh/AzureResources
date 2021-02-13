pipeline {
    agent any
    stages{
        stage('Planning') {
            parallel {
                stage('Create VNET'){
                    steps{
                        bat './resources/createvnet.bat'                
                    }
                }
                stage('Deploy') {
                        withCredentials([azureServicePrincipal('0cec1713-b8dd-4e80-ae85-db9285a02a79')]) {
                        steps{
                            bat 'Get-AzResourceGroup -Name rg-east-Prod-IAUCDR'
                        }
                    }
                }
            }
        }
    }
}
