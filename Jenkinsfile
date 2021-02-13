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
                    steps{
                        bat 'Get-AzResourceGroup -Name rg-east-Prod-IAUCDR'
                    }                    
                }
            }
        }
    }
}
