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
                        echo 'hello'
                    }                    
                }
            }
        }
    }
}
