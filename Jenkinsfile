pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                az login --service-principal --username '6976ba2d-f77b-46bf-9ca9-05f24d34a0f1' --password 'v-PZuWu9~.y8x8gM7JDDbJc~AMKs11fI.d' --tenant 'b7f604a0-00a9-4188-9248-42f3a5aac2e9'
                az network vnet create -g rg-west-prod-IAUCDR -n jenkinsVNET
            }
        }
    }
}
