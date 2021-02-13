pipeline {
    agent any
    stages{
        stage('Sequential Stage'){
            steps{
                echo 'This is a sequential stage';
            }
        }
        stage('Parallel Stage'){
            parallel{
                stage('Stage 1'){
                    agent{
                        label "label for stage 1"
                    }
                    steps{
                        bat './resources/testing1.bat'
                    }
                }
                stage('Stage 2'){
                    agent{
                        label "label for stage 2"
                    }
                    steps{
                        bat './resources/testing2.bat'
                    }
                }                
            }
        }
    }
}
