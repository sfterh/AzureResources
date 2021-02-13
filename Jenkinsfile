pipeline {
    agent any
    stages{
        stage('Create VNET'){
            steps{
                bat './resources/testing1.bat'                
            }
        }
        stage('Deploy') {
            steps{
                bat './resources/testing2.bat'
            }                    
        }
    }
}
