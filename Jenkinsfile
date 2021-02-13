pipeline {
    agent any
    stages {
         parallel {
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
}
