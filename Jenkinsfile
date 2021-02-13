pipeline {
    agent any
    stages {       
        stage('Planning') {
            steps{
                bat './resources/createvnet.bat'                
            }
        }
         stage('Deploy') {
            steps{
                Get-AzResourceGroup -Name "abs-subscription-dev"
            }
        }
    }
}
