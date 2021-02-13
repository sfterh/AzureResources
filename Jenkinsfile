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
                    steps{
                        bat './resources/testing1.bat'
                    }
                }
                stage('Stage 2'){                   
                    steps{
                        bat './resources/testing2.bat'
                    }
                }   
                stage('Stage 3'){                   
                    steps{
                        withCredentials([azureServicePrincipal('0cec1713-b8dd-4e80-ae85-db9285a02a79')]){
                            echo "My client id is $AZURE_CLIENT_ID"
                            echo "My client secret is $AZURE_CLIENT_SECRET"
                            echo "My tenant id is $AZURE_TENANT_ID"
                            echo "My subscription id is $AZURE_SUBSCRIPTION_ID"
                        }
                    }
                }   
            }
        }
    }
}
