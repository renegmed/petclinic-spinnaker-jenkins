pipeline {
    environment {
        registry = "renegmedal/petclinic-spinnaker-jenkins"
        registryCredential = 'dockerHubCredentials'
        dockerImage = '' 
    } 

    agent any
       triggers {
        pollSCM "* * * * *"
       }
    stages { 

        // stage('Build Application') { 
        //     steps {
        //         echo '=== Building Petclinic Application ==='
        //         sh 'mvn -B -DskipTests clean package' 
        //     }
        // }
        // stage('Test Application') {
        //     steps {
        //         echo '=== Testing Petclinic Application ==='
        //         sh 'mvn test'
        //     }
        //     post {
        //         always {
        //             junit 'target/surefire-reports/*.xml'
        //         }
        //     }
        // }
        stage('Build and Push Docker Image') {
           
            // when {
            //     branch 'master'
            // }
            agent any
            steps {               
                echo '=== Building and Pushing Petclinic Docker Image ==='
                script {
                    // sh 'git checkout master'
                 
                    // docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCredentials') {
                    //     def app = docker.build("renegmedal/petclinic-spinnaker-jenkins")
                    //     // app.push()
                    //     // app.push("latest")
                    // }

                    // sh 'docker build --tag renegmedal/petclinic-spinnaker-jenkins .'
                    // dockerImage = docker.build registry + ":$BUILD_NUMBER"      

                    // sh 'make build'
                    // sh 'make push'    
                    docker.withRegistry('', 'dockerHubCredentials') {
                        def customImage = docker.build("renegmedal/petclinic-spinnaker-jenkins:latest")
                        customerImage.inside {
                            //sh 'docker push renegmedal/petclinic-spinnaker-jenkins:latest'
                            customImage.push()
                        }
                       
                    }           
                }
            }
        }
        // stage('Push Docker Image') {           
        //     // when {
        //     //     branch 'master'
        //     // }
        //     steps {              
        //         echo '=== Pushing Petclinic Docker Image ==='
        //         script {
        //             // sh 'git checkout master'
        //             // GIT_COMMIT_HASH = sh (script: "git log -n 1 --pretty=format:'%H'", returnStdout: true)
        //             // SHORT_COMMIT = "${GIT_COMMIT_HASH[0..7]}"
        //             // docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCredentials') {
        //             //     app.push("$SHORT_COMMIT")
        //             //     app.push("latest")
        //             // }
        //             // sh 'docker push renegmedal/petclinic-spinnaker-jenkins'

        //             docker.withRegistry('https://registry.hub.docker.com', 'dockerHubCredentials') {
        //                 sh 'docker push renegmedal/petclinic-spinnaker-jenkins:latest'
        //             }

        //             // docker.withRegistry( '', registryCredential ) {
        //             //     dockerImage.push()
        //             // }

        //             // docker.withRegistry('https://registry.hub.docker.com', registryCredential) {
        //             //     app.push("${env.BUILD_NUMBER}")
        //             //     app.push("latest")
        //             // }

        //         }
        //     }
        // }
        stage('Remove local images') {
            steps {
                echo '=== Delete the local docker images ==='
                sh("docker rmi -f renegmedal/petclinic-spinnaker-jenkins:latest || :")
                // sh("docker rmi -f renegmedal/petclinic-spinnaker-jenkins:$SHORT_COMMIT || :")

                // sh "docker rmi $registry:$BUILD_NUMBER"

            }
        }
    }
}
